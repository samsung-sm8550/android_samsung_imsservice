.class public Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;
.super Ljava/lang/Object;
.source "CmcHotspotSupportStrategy.java"

# interfaces
.implements Lcom/sec/internal/ims/core/cmc/CmcHotspotStrategy;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

.field private final mCmcAccountMgr:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field private final mHandler:Landroid/os/Handler;

.field private final mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

.field private mIsHotspotUpdatePendingDuringRegistering:Z

.field private final mPhoneCount:I


# direct methods
.method public static synthetic $r8$lambda$3ChDBOg4YRX6jtCkHKzkQROYy8w(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->lambda$getCmcRegisterTaskList$1(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HdkeAmtthe30yy1uC6aaYhbQcoc(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->lambda$getCmcRegisterTaskList$0(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K2sYh7onRTxzX-RiuVO5iC_co-k(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->lambda$tryCmcRegister$3(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ntzvfoHo5KshcUpsMzUg_qivI28(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->lambda$tryCmcRegister$4(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qHBOmRUrzKBKFtPdC4bs8nVz8VY(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->lambda$getRegisteredCmcRegisterTask$2(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mIsHotspotUpdatePendingDuringRegistering:Z

    .line 33
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    .line 36
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mCmcAccountMgr:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 38
    iput p4, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mPhoneCount:I

    .line 39
    new-instance p2, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    return-void
.end method

.method private getCmcRegisterTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 106
    iget v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mPhoneCount:I

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;)V

    .line 107
    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda4;-><init>()V

    .line 108
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getRegisteredCmcRegisterTask()Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 1

    .line 112
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->getCmcRegisterTaskList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    return-object p0
.end method

.method private synthetic lambda$getCmcRegisterTaskList$0(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mCmcAccountMgr:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getCmcRegisterTaskList$1(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getRegisteredCmcRegisterTask$2(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2

    .line 112
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryCmcRegister$3(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2

    .line 117
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$tryCmcRegister$4(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 3

    .line 118
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    return-void
.end method

.method private tryCmcRegister()V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->getCmcRegisterTaskList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$$ExternalSyntheticLambda2;-><init>()V

    .line 118
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateHotspotStateToStack(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->scheduleNextUpdateCheck(Z)V

    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddressesWithSubnetPrefix()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    if-eqz p2, :cond_1

    .line 134
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->isAddressesUpdated(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    const-string/jumbo p2, "updateHotspotStateToStack: Hotspot address is not updated in hotspot enabled state"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->setLastAddresses(Ljava/util/List;)V

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHotspotStateToStack: isHotspotEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", hotspotAddresses: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 141
    invoke-static {p0, v1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateCmcHotspotState(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public buildCmcRegiConfig(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddressesWithSubnetPrefix()Ljava/util/List;

    move-result-object v0

    .line 150
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    .line 152
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->setLastAddresses(Ljava/util/List;)V

    .line 153
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->isHotspotEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->scheduleNextUpdateCheck(Z)V

    return-void
.end method

.method public getHotspotAddress()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddresses()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isHotspotEnabled()Z
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->isHotspotEnabled()Z

    move-result p0

    return p0
.end method

.method public onDeregistrationDone()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mIsHotspotUpdatePendingDuringRegistering:Z

    return-void
.end method

.method public onHotspotStateChanged()V
    .locals 5

    .line 69
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->isHotspotEnabled()Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHotspotStateChanged: isHotspotEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mIsHotspotUpdatePendingDuringRegistering:Z

    .line 73
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    if-nez v0, :cond_0

    .line 76
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->reset()V

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->getRegisteredCmcRegisterTask()Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onHotspotStateChanged: Try register CMC when hotspot enabled"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->tryCmcRegister()V

    :cond_1
    return-void

    .line 88
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    const-string/jumbo v2, "onHotspotStateChanged: Pending to update hotspot state"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mIsHotspotUpdatePendingDuringRegistering:Z

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 94
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v4, 0x12

    if-eq v3, v4, :cond_4

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "onHotspotStateChanged: Deregister CMC on hotspot disabled"

    invoke-static {v0, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mCmcAccountMgr:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    const-string v0, "CMC Hotspot disabled"

    const/4 v3, 0x4

    invoke-interface {p0, v2, v0, v3, v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V

    return-void

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string/jumbo v4, "onHotspotStateChanged: Update hotspot state"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    invoke-direct {p0, v2, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->updateHotspotStateToStack(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method public onRegistrationDone()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mIsHotspotUpdatePendingDuringRegistering:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onStartCmcRegistration()V
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartCmcRegistration: registerHotspotStateChangeEvent"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->registerHotspotStateChangeEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public onStopCmcRegistration()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStopCmcRegistration: unRegisterHotspotStateChangeEvent"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->unregisterHotspotStateChangeEvent(Landroid/os/Handler;)V

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->mAddressUpdateCheckHelper:Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy$HotspotAddressUpdateCheckHelper;->reset()V

    return-void
.end method

.method public updateHotspotStateToStack()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->getRegisteredCmcRegisterTask()Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "updateHotspotStateToStack: CMC register task is null"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->isHotspotEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotSupportStrategy;->updateHotspotStateToStack(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method
