.class public Lcom/sec/internal/ims/config/workflow/WorkflowTmo;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowTmo.java"


# static fields
.field static final CONFIG_PARAMS_URI:Landroid/net/Uri;

.field private static final DEVICE_CONFIG:Ljava/lang/String; = "device_config"

.field private static final LOG_TAG:Ljava/lang/String; = "WorkflowTmo"

.field private static final TAG_AUTOCONFIG_HEAD:Ljava/lang/String; = "<RCSConfig>"

.field private static final TAG_AUTOCONFIG_TAIL:Ljava/lang/String; = "</RCSConfig>"

.field private static final TAG_NEW_XML_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\"?>"


# instance fields
.field mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

.field protected mConfigurationParams:Ljava/lang/String;

.field protected mIsNoInitialData:Z

.field protected mIsObserverRegistered:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->CONFIG_PARAMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;I)V
    .locals 13

    move-object v11, p0

    move-object v12, p2

    move-object/from16 v3, p3

    move/from16 v10, p5

    .line 77
    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;

    invoke-direct {v5, p2, v3, v10}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDevice;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapter;

    invoke-direct {v7, v10}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, p2, v3}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsObserverRegistered:Z

    .line 73
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsNoInitialData:Z

    .line 79
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;Landroid/content/Context;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->registerContentObserver()V

    return-void
.end method

.method private registerContentObserver()V
    .locals 3

    .line 314
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsObserverRegistered:Z

    if-nez v0, :cond_0

    .line 315
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "ConfigurationParamObserver is registered."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->registerObserver()V

    const/4 v0, 0x1

    .line 317
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsObserverRegistered:Z

    :cond_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "ConfigurationParamObserver is unregistered."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->unregisterObserver()V

    const/4 v0, 0x0

    .line 325
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsObserverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public checkNetworkConnectivity()Z
    .locals 2

    .line 309
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "checkNetworkConnectivity is false because device config is used"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public cleanup()V
    .locals 1

    .line 331
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->cleanup()V

    .line 332
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->unregisterContentObserver()V

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsNoInitialData:Z

    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 248
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$5;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object p1

    .line 231
    :cond_1
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object p1

    .line 204
    :cond_2
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$3;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object p1

    .line 191
    :cond_3
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object p1

    .line 164
    :cond_4
    new-instance p1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 85
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 135
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 123
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "default app is changed to google, notify Provisioning XML"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 127
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getProvisioningXml(Z)[B

    move-result-object v1

    .line 126
    invoke-virtual {p1, v0, v1, v3}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsAutoConfigurationReceived(I[BZ)V

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->clearWorkflowByDmaChange(I)Z

    goto/16 :goto_0

    .line 88
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "forced startAutoConfig"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 92
    :cond_3
    iget-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    if-eqz p1, :cond_4

    .line 93
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string p1, "AutoConfig:Already started"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 97
    :cond_4
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 98
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutoConfig:START, oldVersion="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->work()V

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoConfig:FINISH, newVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 108
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mLastErrorCodeNonRemote:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {p0, v5, p1, v1, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    .line 112
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 113
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsConfigOngoing:Z

    .line 115
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {p1, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 116
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v1, "notify Provisioning XML"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    .line 118
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getProvisioningXml(Z)[B

    move-result-object p0

    .line 117
    invoke-virtual {p1, v0, p0, v3}, Lcom/sec/internal/google/SecImsNotifier;->notifyRcsAutoConfigurationReceived(I[BZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 3

    .line 338
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "onBootCompleted"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 339
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsNoInitialData:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsNoInitialData:Z

    .line 341
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new operation mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 263
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$6;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 302
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo p1, "setOpMode: unknown"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 298
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setDisabledStateOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    .line 285
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p2

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    if-eq p2, v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionBackup(I)V

    .line 288
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    goto :goto_0

    .line 279
    :pswitch_2
    sget-object p2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->DISABLE_RCS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->clearStorage(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V

    .line 280
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersion(I)V

    .line 281
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidity(I)V

    goto :goto_0

    :pswitch_3
    if-eqz p2, :cond_2

    .line 266
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result p1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 268
    iget p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "the same or lower version. update the data"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->writeDataToStorage(Ljava/util/Map;)V

    goto :goto_0

    .line 272
    :cond_2
    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo p1, "null data. remain previous mode & data"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method work()V
    .locals 7

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 144
    :try_start_0
    invoke-interface {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 153
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown exception occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v1

    .line 146
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoInitialDataException occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": No valid device config params, skip autoconfig"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",NODC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x13020200

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 149
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mIsNoInitialData:Z

    .line 150
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v2

    .line 151
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    return-void
.end method
