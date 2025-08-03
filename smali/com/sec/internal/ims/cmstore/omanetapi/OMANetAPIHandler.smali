.class public Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;
.super Landroid/os/Handler;
.source "OMANetAPIHandler.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
.implements Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;


# static fields
.field private static final EVENT_APP_DATA_SYNC:I = 0x6

.field public static final EVENT_CHECK_SUBSCRIPTION_CHANNEL:I = 0x12

.field private static final EVENT_DEVICE_DATA_UPDATE:I = 0x5

.field public static final EVENT_FCM_RETRY_ON_EMPTY_FCMTOKEN:I = 0x14

.field private static final EVENT_INITSYNC_DATA_DOWNLOAD:I = 0x7

.field private static final EVENT_INITSYNC_DATA_UPLOAD:I = 0x8

.field private static final EVENT_MCS_PAUSE_CMN_NETAPI:I = 0x11

.field private static final EVENT_MCS_RESUME_CMN_NETAPI:I = 0x10

.field private static final EVENT_MCS_START_CMN_NETAPI:I = 0xe

.field private static final EVENT_MCS_STOP_CMN_NETAPI:I = 0xf

.field private static final EVENT_NORMALSYNC_DATA_DOWNLOAD:I = 0x9

.field private static final EVENT_PAUSE_CMN_NETAPI:I = 0x3

.field private static final EVENT_PAUSE_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xb

.field private static final EVENT_RESETBOX_START_CMN_NETAPI:I = 0xa

.field private static final EVENT_RESUME_CMN_NETAPI:I = 0x2

.field private static final EVENT_RESUME_CMN_NETAPI_WITH_CONTROLPARAM:I = 0xc

.field private static final EVENT_START_CMN_NETAPI:I = 0x1

.field private static final EVENT_STOP_CMN_NETAPI:I = 0x4

.field private static final EVENT_STOP_INITSYNC_AS_COMPLETE:I = 0xd

.field public static final EVENT_UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED:I = 0x13


# instance fields
.field public TAG:Ljava/lang/String;

.field private mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private final mContext:Landroid/content/Context;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIsCmsMcsEnabled:Z

.field private mIsFallbackProvisionInProcess:Z

.field private mIsRunning:Z

.field private final mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mLooper:Landroid/os/Looper;

.field private mPhoneId:I

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mSyncFailNotifyReq:Z

.field private final mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

.field private final mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsRunning(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresumeHandlers(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 7

    .line 90
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 50
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    const/4 v1, 0x0

    .line 62
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    .line 63
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    .line 91
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 92
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    .line 94
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    .line 95
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 96
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    .line 98
    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    .line 99
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelScheduler()V

    .line 100
    new-instance p2, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v0, p2

    move-object v1, p1

    move-object v3, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 101
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    return-void
.end method

.method private isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z
    .locals 0

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    sget-object p0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 645
    invoke-virtual {p0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    .line 646
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 2

    if-nez p1, :cond_0

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "notifyBufferDB ParamOMAresponseforBufDB is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 739
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method private notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyOperationsComplete operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_DOWNLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    .line 666
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    iget-object v0, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p2

    .line 664
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    .line 667
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 668
    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_0

    .line 670
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v0, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 671
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-static {p2, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 672
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->MESSAGE_UPLOAD_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 673
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    .line 675
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p1

    .line 672
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    goto :goto_0

    .line 677
    :cond_1
    iget-object p2, p3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private pauseAllSyncHandler()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 452
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->pause()V

    goto :goto_0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 456
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 457
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 458
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->pause()V

    goto :goto_1

    .line 461
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 462
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 463
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 464
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->pause()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V
    .locals 1

    .line 683
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setLine(Ljava/lang/String;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setSyncType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;->INIT_SYNC_COMPLETE:Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;

    .line 684
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setActionType(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$ActionType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    .line 685
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setIsFullSync(Z)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->INITIAL_SYNC_COMPLETE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 686
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->setOMASyncEventType(Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;)Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB$Builder;->build()Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;

    move-result-object p2

    .line 683
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    if-eqz p1, :cond_0

    .line 688
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setInitSyncComplete()V

    :cond_0
    return-void
.end method

.method private resumeAllSyncHandler()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 411
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto :goto_0

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 415
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 416
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 417
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto :goto_1

    .line 420
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 421
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 422
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 423
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resumeAllSyncHandlerByLine(Ljava/lang/String;)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 372
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 373
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resume()V

    goto :goto_0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 377
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 378
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 379
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->resume()V

    goto :goto_1

    .line 382
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 383
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstancesByLine(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 384
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 385
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->resume()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 1

    .line 339
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$3;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 346
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    return-void
.end method

.method private resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeHandlers mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPollingAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 351
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 357
    :cond_0
    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz p1, :cond_1

    .line 358
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    :cond_1
    return-void
.end method

.method private resumeSingleHandler(Landroid/os/Handler;)V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeSingleHandler , isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 652
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    .line 653
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldStopSendingAPIwhenNetworklost()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    if-eqz p0, :cond_1

    .line 654
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    .line 655
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->TRANSIT_TO_RESUME:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    iput v0, p0, Landroid/os/Message;->what:I

    .line 656
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 7

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpdateToHandlers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 473
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 474
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 475
    iget v3, v2, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/16 v4, 0xa

    if-eq v3, v4, :cond_1

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 485
    :cond_0
    iget-object v3, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 481
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 491
    :cond_2
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-string/jumbo v2, "sendDeviceUpdateToHandlers get handler : "

    const/4 v3, 0x0

    if-lez p1, :cond_3

    .line 492
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 493
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type = msg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v5, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v6, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v5, p1, v6}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 497
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 498
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    .line 501
    :cond_3
    iget-object p1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 502
    iget-object p1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type = vvm"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, p1, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDeviceDataUpdateHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 507
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 508
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    :cond_4
    return-void
.end method

.method private sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 5

    .line 514
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDownloadToDataChangeHandlers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 518
    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 519
    iget v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-eq v2, v3, :cond_3

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_1

    .line 546
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 549
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    :cond_0
    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 539
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 532
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 535
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 525
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v3, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v4, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v3, v1, v4}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getDataChangeHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V

    goto :goto_1

    .line 554
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 559
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->DOWNLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void
.end method

.method private sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V
    .locals 10

    .line 563
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendToHandlerInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 568
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    move-object v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 569
    iget-object v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mLine:Ljava/lang/String;

    .line 571
    iget v3, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    const-wide/16 v7, 0x0

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-eq v3, v4, :cond_5

    const/4 v4, 0x4

    if-eq v3, v4, :cond_5

    const/16 v4, 0xa

    if-eq v3, v4, :cond_5

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_4

    const/16 v4, 0xc

    if-eq v3, v4, :cond_5

    const/16 v4, 0xd

    if-eq v3, v4, :cond_5

    const/16 v4, 0x11

    if-eq v3, v4, :cond_2

    const/16 v4, 0x12

    if-eq v3, v4, :cond_0

    .line 631
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v2

    .line 633
    invoke-virtual {v2, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_1

    .line 615
    :cond_0
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 616
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v4, v2, v9}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    .line 617
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v4

    .line 619
    iget-wide v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    .line 620
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getIsFullSyncParam()Z

    move-result v8

    move-object v3, p0

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto :goto_0

    .line 623
    :cond_1
    invoke-virtual {v4, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    :goto_2
    move-object v2, v4

    goto :goto_1

    .line 605
    :cond_2
    sget-object v9, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    .line 606
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    invoke-direct {v4, v2, v9}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v4

    .line 607
    iget-wide v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_3

    .line 608
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getIsFullSyncParam()Z

    move-result v8

    move-object v3, p0

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto/16 :goto_0

    .line 611
    :cond_3
    invoke-virtual {v4, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto :goto_2

    .line 601
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v2

    .line 602
    invoke-virtual {v2, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_1

    .line 578
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isEnableFolderIdInSearch()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 579
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    :goto_3
    move-object v9, v3

    goto :goto_4

    .line 581
    :cond_6
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    goto :goto_3

    .line 583
    :goto_4
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v4, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v5, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->MESSAGE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v4, v2, v5}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v4

    .line 584
    iget-wide v2, v6, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mRowId:J

    cmp-long v2, v2, v7

    if-nez v2, :cond_8

    .line 585
    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v2, :cond_7

    .line 586
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->OBJECT_END_UPLOAD:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v2

    invoke-virtual {v4, v2, v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->onGoToEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 588
    :cond_7
    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->getIsFullSyncParam()Z

    move-result v8

    move-object v3, p0

    move-object v5, p2

    move-object v7, v9

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    goto/16 :goto_0

    .line 592
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isBulkCreationEnabled()Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    .line 593
    invoke-virtual {v2, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 594
    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 596
    :cond_9
    invoke-virtual {v4, v6, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    goto/16 :goto_2

    :cond_a
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    .line 628
    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyOperationsComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    return-void

    .line 637
    :cond_b
    invoke-direct {p0, v2, p2, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->isHandleAppendToWorkingQueue(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 638
    sget-object p1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->BULK_UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-virtual {v2, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->appendToWorkingQueue(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    .line 640
    :cond_c
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeSingleHandler(Landroid/os/Handler;)V

    return-void
.end method

.method private sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    .line 693
    sget-object v0, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;->UPLOAD:Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendToHandlerInternal(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler$SyncOperation;)V

    return-void
.end method

.method private startAllSyncHandler()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 391
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 392
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 396
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 398
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->start()V

    goto :goto_1

    .line 401
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 402
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object p0

    .line 403
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 404
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->start()V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private stopAllSyncHandler()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllSyncHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    .line 430
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->stop()V

    goto :goto_0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllSyncHandlerInstances()V

    .line 434
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 435
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDataChangeHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 436
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;

    .line 437
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/clouddatasynchandler/BaseDataChangeHandler;->stop()V

    goto :goto_1

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDataChangeHandlerInstances()V

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    .line 442
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getAllDeviceDataUpdateHandlerInstances()Ljava/util/List;

    move-result-object v0

    .line 443
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;

    .line 444
    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/BaseDeviceDataUpdateHandler;->stop()V

    goto :goto_2

    .line 446
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->clearAllDeviceDataUpdateHandlerInstances()V

    return-void
.end method

.method private stopInitSyncAsComplete()V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    .line 1028
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    new-instance v2, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object v1

    const/4 v2, 0x0

    .line 1029
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->processInitSyncComplete(Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Z)V

    return-void
.end method


# virtual methods
.method public deleteNotificationForDMAChange()V
    .locals 5

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "deleteNotificationForDMAChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;-><init>()V

    .line 933
    const-string v1, "NONDMA"

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    const/4 v1, 0x0

    .line 934
    iput-boolean v1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    .line 935
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelResURL()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    .line 936
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 937
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 936
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 938
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteNotificationForDMAChange: updateMessage: channelDeleteData.channelUrl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->channelUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " channelDeleteData.deleteReason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->deleteReason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " channelDeleteData.isNeedRecreateChannel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lcom/sec/internal/omanetapi/nc/data/ChannelDeleteData;->isNeedRecreateChannel:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public deleteNotificationSubscriptionResource()V
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->DELETE_NOTIFICATION_SUBSCRIPTION_RESOURCE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :cond_0
    return-void
.end method

.method public handleLargeDataPolling()V
    .locals 4

    .line 1019
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v0

    .line 1020
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleLargeDataPolling "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->SEND_LARGE_DATA_POLLING_REQUEST:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    .line 1022
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v1

    .line 1021
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1023
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 123
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->logWorkingStatus()V

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, -0x6ffbffff

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 330
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onStartFcmRetry()V

    goto/16 :goto_2

    .line 321
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_UPDATE_NOTIFICATION_CHANNEL_LIFETIME_FINISHED: update success:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onChannelLifetimeUpdateComplete()V

    goto/16 :goto_2

    .line 326
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_2

    .line 316
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_CHECK_SUBSCRIPTION_CHANNEL: update"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->CHECK_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto/16 :goto_2

    .line 294
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_MCS_PAUSE_CMN_NETAPI: pause"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",OMA:PAUSE"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 296
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 297
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 298
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_2

    .line 302
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: EVENT_MCS_RESUME_CMN_NETAPI: resume isTokenRefresh:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",OMA:RESUME,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v0

    xor-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 306
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    if-eqz p1, :cond_1

    .line 308
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeMcsAfterTokenRefresh()V

    goto :goto_0

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 312
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    goto/16 :goto_2

    .line 285
    :pswitch_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_MCS_STOP_CMN_NETAPI: stop"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",OMA:STOP"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 288
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 289
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAllSyncHandler()V

    .line 290
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    goto/16 :goto_2

    .line 265
    :pswitch_7
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 266
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$2;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 278
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "handleMessage: EVENT_MCS_START_CMN_NETAPI: start"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",OMA:START"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 280
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 281
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    goto/16 :goto_2

    .line 261
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopInitSyncAsComplete()V

    goto/16 :goto_2

    .line 190
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 191
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 192
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 194
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getControllerOfLastFailedApi()Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 196
    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    if-nez v1, :cond_3

    instance-of v1, v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    if-eqz v1, :cond_2

    goto :goto_1

    .line 202
    :cond_2
    iget-boolean v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v1, :cond_e

    .line 203
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_2

    .line 197
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-boolean v1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-eqz v1, :cond_e

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeControllerOfLastFailedApi(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_2

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "no failed API before, resume all handlers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeHandlers(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    goto/16 :goto_2

    .line 169
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    .line 170
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsMsgAppForeground:Z

    if-nez v0, :cond_5

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v1, "Pause polling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsUserDeleteAccount:Z

    if-nez v0, :cond_6

    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsServicePaused:Z

    if-nez p1, :cond_6

    .line 178
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string p1, "Should only disable polling"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 180
    :cond_6
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_2

    .line 183
    :cond_7
    iget-boolean p1, p1, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;->mIsNetworkValid:Z

    if-nez p1, :cond_e

    .line 184
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto/16 :goto_2

    .line 221
    :pswitch_b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 222
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 224
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result p1

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz p1, :cond_e

    .line 225
    :cond_9
    new-instance p1, Lcom/sec/internal/ims/cmstore/helper/SyncParam;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/SyncParam;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    goto/16 :goto_2

    .line 251
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_e

    .line 253
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToDataChangeHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 244
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_e

    .line 246
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUploadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 237
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_e

    .line 239
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDownloadToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 230
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    if-eqz p1, :cond_e

    .line 232
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendDeviceUpdateToHandlers(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto/16 :goto_2

    .line 213
    :pswitch_10
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 214
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 215
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    .line 217
    :cond_a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAllSyncHandler()V

    goto/16 :goto_2

    .line 161
    :pswitch_11
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 163
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->pause()V

    .line 165
    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseAllSyncHandler()V

    goto :goto_2

    .line 150
    :pswitch_12
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez p1, :cond_e

    .line 151
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    const-string v0, "Resume all handlers"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 154
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->resume()V

    .line 156
    :cond_c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandler()V

    goto :goto_2

    .line 129
    :pswitch_13
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    .line 130
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isPollingAllowed()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;)V

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V

    .line 142
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->start()V

    .line 144
    :cond_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 145
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->startAllSyncHandler()V

    :cond_e
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected logWorkingStatus()V
    .locals 3

    .line 987
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logWorkingStatus: [mIsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsFallbackProvisionInProcess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCloudObjectNotificationUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 873
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onCloudSyncStopped(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onDeviceFlagUpdateCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 898
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onDeviceFlagUpdateSchedulerStarted()V

    return-void
.end method

.method public onFallbackToProvision(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 4

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check fallback to provision: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "provision is in process, wait until next resume"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 963
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAddWoPhoneId(Ljava/lang/String;ILjava/lang/String;)V

    .line 965
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseMcsForDeregi()V

    .line 968
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onPauseCMNNetApi()V

    .line 969
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 970
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsFallbackProvisionInProcess:Z

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0, p1, p0, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->onOmaApiCredentialFailed(Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V

    :cond_2
    return-void
.end method

.method public onInitSyncCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInitSyncCompleted getUserTbs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onInitialDBSyncCompleted()V

    .line 830
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitUploadStarted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 816
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onInitialSyncStarted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onLineSITRefreshed(Ljava/lang/String;)V
    .locals 3

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLineSITRefreshed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeAllSyncHandlerByLine(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onMessageDownloadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 853
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onMessageUploadCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 858
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onNormalSyncComplete(Z)V
    .locals 1

    .line 1038
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-nez v0, :cond_0

    .line 1039
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onVVMNormalSyncComplete(Z)V

    :cond_0
    return-void
.end method

.method public onNotificationObjectDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 883
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOmaAuthenticationFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 0

    .line 888
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V

    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onOmaFailExceedMaxCount()V

    return-void
.end method

.method public onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 978
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->onOmaSuccess(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V

    return-void
.end method

.method public onOneDeviceFlagUpdated(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 893
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOneMessageDownloaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onOneMessageUploaded(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 868
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onPartialSyncSummaryCompleted(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 878
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    return-void
.end method

.method public onPauseCMNNetApi()V
    .locals 1

    .line 945
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 946
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 948
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onPauseCMNNetApiWithResumeDelay(I)V
    .locals 5

    .line 954
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pause all net API, resume all "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " seconds later"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 955
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x3

    .line 956
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    int-to-long v1, p1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 957
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSyncFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 3

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSyncFailed mSyncFailNotifyReq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->notifyBufferDB(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    .line 0
    return-void
.end method

.method public pauseMcsForDeregi()V
    .locals 2

    .line 756
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->PAUSE_ON_DEREGISTRATION:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 757
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    .line 758
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->stop()V

    return-void
.end method

.method public pauseforMcs()V
    .locals 1

    const/16 v0, 0x11

    .line 777
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pausewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    .line 771
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 772
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 773
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mUpdateFromCloudRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 1

    .line 1010
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_0

    .line 1011
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    goto :goto_0

    .line 1013
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->REMOVE_UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    :goto_0
    return-void
.end method

.method public resetChannelScheduler()V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetChannelScheduler: isCmsMcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/gcm/ChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    goto :goto_0

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/fcm/McsNotificationChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 115
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/SubscriptionChannelScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mLooper:Landroid/os/Looper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->muiCallBack:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/omanetapi/polling/OMAPollingScheduler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    :goto_0
    return-void
.end method

.method public resetChannelState()V
    .locals 1

    .line 1033
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESET_STATE:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->update(I)Z

    return-void
.end method

.method public resume()V
    .locals 0

    .line 0
    return-void
.end method

.method public resumeMcsAfterTokenRefresh()V
    .locals 2

    .line 762
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->RESUME_ON_FCM_TOKEN_REFRESH:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 763
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resumeforMcs(Z)V
    .locals 3

    .line 792
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeforMcs isTokenRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x10

    .line 793
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 794
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumewithStatusParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    .line 786
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 787
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 788
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 697
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    .line 698
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 699
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->setIsFullSyncParam(Z)V

    .line 700
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    return-void
.end method

.method public sendAppSyncResetBox(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncHandlerFactory:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->getSyncHandlerInstance(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;

    move-result-object p0

    .line 705
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->resetSearchParam()V

    .line 706
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/synchandler/BaseSyncHandler;->start()V

    return-void
.end method

.method public sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/4 v0, 0x7

    .line 716
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 717
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 718
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/16 v0, 0x9

    .line 722
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 723
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/4 v0, 0x5

    .line 710
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 711
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 1

    const/16 v0, 0x8

    .line 728
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 729
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 730
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setSyncFailNotifyParam(Z)V
    .locals 0

    .line 807
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSyncFailNotifyReq:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 744
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public start_resetBox()V
    .locals 1

    const/16 v0, 0xa

    .line 748
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startforMcs()V
    .locals 1

    const/16 v0, 0xe

    .line 752
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x4

    .line 799
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopforMcs()V
    .locals 1

    const/16 v0, 0xf

    .line 803
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: eventType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 0

    .line 909
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public updateDelayedSubscriptionChannel()V
    .locals 3

    .line 998
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mIsCmsMcsEnabled:Z

    const-wide/32 v1, 0xea60

    if-eqz v0, :cond_0

    .line 999
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mSubscriptionChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    goto :goto_0

    .line 1001
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL_DELAY:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    :goto_0
    return-void
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 920
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateSubscriptionChannel()V
    .locals 3

    .line 1006
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->mChannelScheduler:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->UPDATE_SUBSCRIPTION_CHANNEL:Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/omanetapi/OMASyncEventType;->getId()I

    move-result v0

    const-wide/32 v1, 0xea60

    invoke-interface {p0, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;->updateDelay(IJ)Z

    return-void
.end method
