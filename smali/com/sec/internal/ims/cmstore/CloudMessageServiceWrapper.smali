.class public Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
.super Lcom/sec/internal/helper/StateMachine;
.source "CloudMessageServiceWrapper.java"


# static fields
.field private static final EVENT_CANCEL_RCSMESSAGE_LIST:I = 0x13

.field private static final EVENT_CMS_SERVICE_STARTED:I = 0x14

.field private static final EVENT_CREATE_PARTICIPANT:I = 0xd

.field private static final EVENT_CREATE_SESSION:I = 0xe

.field private static final EVENT_DEFAULT_SMS_APP_CHANGED:I = 0x11

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGCHATID:I = 0xb

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGIMDNID:I = 0x10

.field private static final EVENT_DELETE_RCSMESSAGELIST_USINGMSGID:I = 0xa

.field private static final EVENT_GETPROFILE:I = 0x3

.field private static final EVENT_ON_IMSDEREGISTERED:I = 0x12

.field private static final EVENT_ON_IMSREGISTERED:I = 0xf

.field private static final EVENT_READ_RCSMESSAGE_LIST:I = 0xc

.field private static final EVENT_RECEIVE_RCS_MESSAGE:I = 0x8

.field private static final EVENT_SENT_RCS_MESSAGE:I = 0x9

.field private static final EVENT_SERVICE_ACTIVE:I = 0x6

.field private static final EVENT_SERVICE_CONNECTED:I = 0x4

.field private static final EVENT_SERVICE_DEACTIVE:I = 0x7

.field private static final EVENT_SERVICE_DISCONNECTED:I = 0x5

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x2

.field private static final mReadImsProfileValueDelay:I = 0x4b0


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private isCmsServiceActive:Z

.field private mCloudMessageConnection:Landroid/content/ServiceConnection;

.field private mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/sec/internal/helper/State;

.field private mServiceConnectedState:Lcom/sec/internal/helper/State;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimReadyState:Lcom/sec/internal/helper/State;

.field private mSimSlot:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/ims/ICentralMsgStoreService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnectedState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimManager(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimReadyState(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCloudMessageService(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/ims/ICentralMsgStoreService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    return-void
.end method

.method static bridge synthetic -$$Nest$misCmsEnabled(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsEnabled()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDisableCms(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onDisableCms()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monProfileReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onProfileReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monRCSDbReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onRCSDbReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimReady(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimReady()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSimRemoved(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimRemoved()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mserviceNotBindYet(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;)V
    .locals 2

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CloudMessageServiceWrapper["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 331
    const-class p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 358
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$DefaultState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 359
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$SimReadyState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    .line 360
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;

    invoke-direct {p3, p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$ServiceConnectedState-IA;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    .line 361
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    const/4 p3, 0x0

    .line 362
    iput-boolean p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    .line 552
    new-instance p3, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$2;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$2;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    .line 366
    iput p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 368
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    .line 369
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->initStates()V

    .line 370
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x1

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 373
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x2

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 374
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-interface {p1, p2, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->registerCMSStartIntent()V

    return-void
.end method

.method private getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 428
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->CHAT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initStates()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mServiceConnectedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 384
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private isCmsEnabled()Z
    .locals 2

    .line 418
    iget p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    const-string/jumbo v0, "services"

    const-string v1, ""

    .line 419
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 422
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    :cond_0
    const-string p0, "cms"

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    const-string v0, ","

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffffffb

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 649
    const-string/jumbo v1, "sim_status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 651
    const-string p1, "cms_profile_event"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 653
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sec/ims/ICentralMsgStoreService;->onRCSDBReady(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->serviceNotBindYet()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 658
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "notifyStatusChanged Failed due to Exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private onDisableCms()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDisableCms: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v0, "SimReady"

    const-string v1, "CmsProfileDisable"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onProfileReady()V
    .locals 4

    .line 388
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsEnabled()Z

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProfileReady isCMSServiceEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isCmsServiceActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " cloudsvcstatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {v1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AIO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 393
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 394
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->connect()V

    goto :goto_1

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Central message store not enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 400
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_1
    return-void
.end method

.method private onRCSDbReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRCSDbReady: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v0, "SimReady"

    const-string v1, "CmsProfileEnable"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onSimReady()V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimReady"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    const-wide/16 v1, 0x4b0

    .line 406
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private onSimRemoved()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRemoved: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v0, "SimRemoved"

    const-string v1, "CmsProfileDisable"

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->notifyStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private serviceNotBindYet()V
    .locals 1

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Service is not binded yet"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancelRCSMessageList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelRCSMessageList, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x13

    .line 495
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 496
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public connect()V
    .locals 5

    .line 609
    iget v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 610
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect mCloudMsgService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_ConfigOpBackupSync"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "AMBS has been disabled for V OS and above"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 618
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "appName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    const-string/jumbo v2, "sim_slot"

    iget v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimSlot:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 622
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 624
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind to cloud message service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    return-void
.end method

.method public createParticipant(Ljava/lang/String;)V
    .locals 3

    .line 501
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createParticipant : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    .line 505
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 506
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 507
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;)V
    .locals 1

    .line 511
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xe

    .line 514
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 515
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingChatId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSMessageListUsingChatId, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xb

    .line 475
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 476
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getJsonStringChatIdList(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingImdnId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSMessageListUsingImdnId, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x10

    .line 465
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 466
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 467
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteRCSMessageListUsingMsgId(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteRCSMessageListUsingMsgId, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xa

    .line 455
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 456
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public disconnect()V
    .locals 2

    .line 631
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 633
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mCloudMessageService:Lcom/sec/ims/ICentralMsgStoreService;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 638
    :goto_1
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    const/4 v0, 0x0

    .line 640
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    return-void
.end method

.method public getImsi()Ljava/lang/String;
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDefaultSmsPackageChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x11

    .line 602
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 603
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onImsDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImsDeregistered: isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x12

    .line 592
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 593
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onImsRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onImsRegistered: isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xf

    .line 582
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 583
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 584
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public readRCSMessageList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readRCSMessageList, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xc

    .line 485
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 486
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;->IMDN:Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;

    invoke-static {p1, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(Ljava/util/List;Lcom/sec/internal/constants/ims/cmstore/CmsJsonConstants$JSON_TYPE;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public receiveRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    .line 435
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 436
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 437
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected registerCMSStartIntent()V
    .locals 3

    .line 538
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 539
    const-string v1, "com.samsung.rcs.framework.cloudmessage.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 540
    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper$1;-><init>(Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;)V

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public sentRCSMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sentRCSMessage, isCmsServiceActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    .line 445
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 446
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getJsonElements(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
