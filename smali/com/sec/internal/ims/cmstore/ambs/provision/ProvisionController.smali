.class public Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;
.super Landroid/os/Handler;
.source "ProvisionController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;


# static fields
.field protected static final EVENT_PAUSE:I = 0x6

.field protected static final EVENT_PAUSE_SERVICE:I = 0x8

.field protected static final EVENT_PROVISIONAPI_FAIL:I = 0x4

.field protected static final EVENT_PROVISIONAPI_SUCCESS:I = 0x3

.field protected static final EVENT_PROVISION_API:I = 0x1

.field protected static final EVENT_RESUME:I = 0x5

.field protected static final EVENT_STOP:I = 0x7

.field protected static final EVENT_UI_ACTIONS:I = 0x2


# instance fields
.field private final DELAY:J

.field private final INTERNAL_WAITING:J

.field public TAG:Ljava/lang/String;

.field private final mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

.field private final mContext:Landroid/content/Context;

.field private mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

.field private mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

.field private mHasUserDeleteAccount:Z

.field private mHasUserOptedIn:Z

.field private final mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

.field public mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private final mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

.field private mIfSteadyState:Z

.field private mIsInternalRestart:Z

.field private mLastSavedMessageIdAfterStop:I

.field private mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field private mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

.field private mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

.field private mNewUserOptInCase:I

.field private mPaused:Z

.field private mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private final mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;


# direct methods
.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->factoryReset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreadNcHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mreadNmsHost(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
    .locals 4

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 80
    const-class p2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-wide/16 v0, 0x1388

    .line 81
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->INTERNAL_WAITING:J

    const-wide/16 v0, 0x2710

    .line 82
    iput-wide v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->DELAY:J

    const/4 p2, -0x1

    .line 88
    iput p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 92
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 93
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 261
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$2;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 102
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    .line 105
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 106
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    .line 107
    new-instance p3, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-direct {p3, v1, p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;-><init>(ILcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    .line 108
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 109
    iput-object p6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    .line 111
    iput p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 112
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 113
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 114
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerFactoryResetReceiver()V

    .line 115
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    :cond_0
    return-void
.end method

.method private displayOptIn(I)V
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1126
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result v0

    .line 1127
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayOptIn: hasShownPopUpOptIn? : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasUserOptedIn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1138
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "handlerUIonSuccessProvisionAPI: !isOOBE && UserHasOptedIn - impossible here"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1132
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const-string/jumbo v2, "pop_up"

    invoke-interface {v0, p1, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1135
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 1136
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_2

    .line 1143
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_3

    goto :goto_1

    .line 1146
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "handlerUIonSuccessProvisionAPI: !OOBE && UserOptedIn"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1144
    :cond_4
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :goto_2
    return-void
.end method

.method private factoryReset()V
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Factory reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSStopService(Z)V

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "non_pop_up"

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    invoke-interface {v0, v2, v3, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "factoryReset Done"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleInternalRestart(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .locals 3

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "handleInternalRestart, restart without optin ui"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1036
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 1037
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1042
    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasUserOptedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    const-string v1, "HAP.REQACCOUNT.GET_TC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1046
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1048
    :cond_1
    const-string v0, "HAP.REQACCOUNT.EXIST_USER"

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1049
    new-instance p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    .line 1050
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1052
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "illegal returned callflow name"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private handleProvisionErr()V
    .locals 3

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionErr, TBS Case:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1430
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1431
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const-string/jumbo v2, "pop_up"

    .line 1430
    invoke-interface {p0, v0, v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 1434
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    :goto_0
    return-void
.end method

.method private handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V
    .locals 7

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProvisionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserOptedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIfSteadyState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAMBSActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isAMBSActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 554
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 557
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage stop! Pending Message is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 560
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$3;->$SwitchMap$com$sec$internal$constants$ims$cmstore$enumprovision$EnumProvision$ProvisionEventType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "No more chance. Show error screen"

    const/4 v1, -0x1

    const-string v2, "non_pop_up"

    const/4 v3, 0x1

    const-string/jumbo v4, "pop_up"

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 987
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onMailBoxMigrationReset()V

    goto/16 :goto_5

    .line 958
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 959
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Wrong CTN, clear user input"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 963
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result p1

    if-nez p1, :cond_2

    .line 964
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isZCodeMax2Tries: false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 966
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 968
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isZCodeMax2Tries: true, mHasUserOptedIn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    .line 970
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz p1, :cond_3

    .line 971
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 972
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 971
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 974
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 975
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_0

    .line 978
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 979
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 983
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 984
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    goto/16 :goto_5

    .line 955
    :pswitch_3
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto/16 :goto_5

    .line 929
    :pswitch_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    .line 930
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-eqz p1, :cond_4

    .line 931
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 933
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Enable_PrmptMsg15:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 935
    iput-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 938
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 942
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Provisioning Api\'s"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-nez p1, :cond_5

    .line 944
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 946
    :cond_5
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 947
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 948
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 949
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 950
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 952
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    goto/16 :goto_5

    .line 899
    :pswitch_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v0

    .line 901
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v2

    .line 902
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 903
    invoke-interface {v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result v4

    .line 904
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v6}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 905
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v6, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 906
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopProvisioningAPIs()V

    .line 910
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 911
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 913
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 914
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 915
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 917
    :cond_6
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 918
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 919
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 920
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    if-eqz v2, :cond_2f

    .line 925
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    goto/16 :goto_5

    .line 890
    :pswitch_7
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-eqz p1, :cond_7

    .line 891
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 892
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 894
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->StopBackupError_ErrMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 896
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 871
    :pswitch_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 872
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 874
    :cond_8
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_9

    .line 875
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 876
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_9
    if-eqz p1, :cond_a

    .line 877
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_a

    .line 878
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 879
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 878
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 881
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 882
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 884
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 885
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 884
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 839
    :pswitch_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 840
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "max 2 tries reached"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeUserInputNumberCount()V

    .line 842
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 843
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 845
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_c
    move v3, v5

    .line 848
    :goto_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_d

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_d

    .line 849
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 850
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_d
    if-eqz p1, :cond_f

    .line 851
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_f

    .line 852
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AuthenticationError_ErrMsg2:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 853
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 852
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 855
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    if-eqz v3, :cond_e

    .line 857
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 858
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 857
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 860
    :cond_e
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 864
    :cond_f
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 865
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 866
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 865
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 816
    :pswitch_a
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_11

    .line 817
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_10

    .line 818
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 819
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 822
    :cond_10
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_5

    .line 825
    :cond_11
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_12

    .line 826
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningError_ErrMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 827
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 826
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 829
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 830
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 833
    :cond_12
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionErr()V

    goto/16 :goto_5

    .line 800
    :pswitch_b
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_13

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_13

    .line 801
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 802
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_13
    if-eqz p1, :cond_14

    .line 803
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_14

    .line 804
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ProvisioningBlockedError_ErrMsg8:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 805
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 804
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 807
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 808
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 810
    :cond_14
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 811
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 810
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 785
    :pswitch_c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 788
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearInvalidUserCtn()V

    .line 790
    :cond_15
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isNoMoreChanceUserInputNumber()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 791
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 795
    :cond_16
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "user still has a chance to input the number"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 768
    :pswitch_d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getIsUserInputCtn()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 769
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 771
    :cond_17
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 772
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isZCodeMax2Tries()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 773
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->AUTH_ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 775
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->removeZCodeCounter()V

    goto/16 :goto_5

    .line 777
    :cond_18
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increazeZCodeCounter()V

    .line 778
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_AUTH_ZCODE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 752
    :pswitch_e
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_19

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez v0, :cond_19

    .line 753
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 754
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    :cond_19
    if-eqz p1, :cond_1a

    .line 755
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_1a

    .line 756
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->EligibilityError_ErrMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 757
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 756
    invoke-interface {p1, v0, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 759
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 760
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 762
    :cond_1a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 763
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    .line 762
    invoke-interface {p0, p1, v4, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto/16 :goto_5

    .line 748
    :pswitch_f
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqRetireSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 749
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    goto/16 :goto_5

    .line 743
    :pswitch_10
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 737
    :pswitch_11
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-nez p1, :cond_1b

    .line 738
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 740
    :cond_1b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 730
    :pswitch_12
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserDeleteAccount(Z)V

    .line 731
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onUserDeleteAccount(Z)V

    .line 732
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 726
    :pswitch_13
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 722
    :pswitch_14
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 718
    :pswitch_15
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 715
    :pswitch_16
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 706
    :pswitch_17
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 707
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcNmsHost()V

    .line 708
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initSharedPreference()V

    .line 710
    :cond_1c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onChannelStateReset()V

    .line 711
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 697
    :pswitch_18
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 698
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 699
    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 700
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterSmsReceiver()V

    .line 701
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stopPhoneStateListener()V

    .line 702
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 666
    :pswitch_19
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->EVENT_AUTH_ZCODE_TIMEOUT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    .line 667
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object v0

    .line 668
    invoke-virtual {p0, v3, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 671
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 674
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "empty CTN, phone number:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v1

    .line 678
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phone number from DB == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_1d
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    goto :goto_2

    .line 683
    :cond_1e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 684
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "Phone number was changed!!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->needToHandleSimSwap()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 686
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onRestartService()V

    :cond_1f
    return-void

    .line 691
    :cond_20
    :goto_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 692
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    const-wide/32 v0, 0xdbba0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    .line 694
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_5

    .line 663
    :pswitch_1a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startPhoneStateListener()V

    goto/16 :goto_5

    .line 647
    :pswitch_1b
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->readAndSaveSimInformation(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 648
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 648
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 650
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "empty CTN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->MsisdnEntry_ErrMsg6:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 652
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    .line 651
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_5

    .line 658
    :cond_21
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "CTN was successfully read"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_5

    .line 562
    :pswitch_1c
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerNetworkChangeReceiver()V

    .line 563
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    .line 564
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 565
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerConfigurationObserver()V

    .line 567
    :cond_22
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimOrCtnChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 568
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    if-nez p1, :cond_30

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 569
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 570
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p1

    .line 569
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto/16 :goto_6

    .line 577
    :cond_23
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    .line 580
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasShownPopupOptIn()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    if-nez p1, :cond_25

    .line 582
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "has shown popup before, will not bother user and server, non_popup screen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_24

    .line 587
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_3

    .line 589
    :cond_24
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :goto_3
    return-void

    .line 595
    :cond_25
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 596
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 597
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isRetryTimesFinished"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_26

    .line 600
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_26
    return-void

    .line 605
    :cond_27
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 606
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p1

    goto :goto_4

    :cond_28
    const/4 p1, 0x0

    :goto_4
    if-eqz p1, :cond_2c

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryLastApi"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;

    if-eqz p1, :cond_29

    .line 610
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "in order to Auth Z code, register sms receiver"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerSmsReceiver()V

    .line 613
    :cond_29
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 614
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    .line 618
    :cond_2a
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_2b

    .line 619
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_2b
    return-void

    .line 624
    :cond_2c
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 625
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void

    .line 629
    :cond_2d
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 632
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v5}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 634
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void

    .line 638
    :cond_2e
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getValidPAT()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 639
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "PAT VALID"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionReady()V

    :cond_2f
    :goto_5
    return-void

    .line 571
    :cond_30
    :goto_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "isSimOrCtnChanged || OOBE || empty CTN"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->startOOBE()V

    .line 573
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAppVer(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V
    .locals 7

    .line 415
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUIEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " messge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-nez p1, :cond_0

    .line 418
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "screenName is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 421
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$3;->$SwitchMap$com$sec$internal$constants$ims$cmstore$ATTConstants$AttAmbsUIScreenNames:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "SteadyStateError - retry api"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "non_pop_up"

    const/4 v6, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 540
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    if-eqz p1, :cond_f

    .line 541
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto/16 :goto_1

    .line 525
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 527
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->increaseUserInputNumberCount()V

    .line 528
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 529
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 530
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, p2, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    .line 531
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHECK_PHONE_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onFixedFlow(I)V

    goto/16 :goto_1

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "phone number null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 536
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_INPUT_CTN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    .line 502
    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 503
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 505
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 506
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v3

    :cond_2
    if-eqz v3, :cond_4

    .line 508
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 510
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p1, v3, p0, p2, v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 513
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    return-void

    .line 516
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "retry stack is empty"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 520
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto/16 :goto_1

    .line 470
    :pswitch_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 471
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 473
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    .line 474
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isLastAPIRequestCreateAccount()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 475
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "HUIToken 6014 case"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 477
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 479
    :cond_5
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    .line 481
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 482
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v3

    :cond_7
    if-eqz v3, :cond_9

    .line 484
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 486
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    invoke-virtual {p1, v3, p0, p2, v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 489
    :cond_8
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    return-void

    .line 492
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p2, "last api is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 495
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 496
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    goto/16 :goto_1

    .line 465
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 467
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_DELETE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    :pswitch_5
    if-nez v0, :cond_a

    .line 453
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 455
    :cond_a
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 456
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 457
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 458
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 460
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto/16 :goto_1

    :pswitch_6
    if-nez v0, :cond_b

    .line 424
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 427
    :cond_b
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveUserOptedIn(Z)V

    .line 428
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 429
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p2

    invoke-interface {p1, p2, v5, v6}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 432
    iget p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 433
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newUserOptInCase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->ERR:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p2

    if-ne p1, p2, :cond_d

    .line 435
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 436
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAtsToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 437
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 439
    :cond_c
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 441
    :goto_0
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    goto :goto_1

    .line 442
    :cond_d
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p2

    if-ne p1, p2, :cond_e

    .line 443
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 444
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 446
    :cond_e
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 447
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    :cond_f
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .locals 2

    .line 1165
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlerUIonFailedProvisionAPI: all failed APIs should go here. param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .locals 6

    .line 1058
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerUIonSuccessProvisionAPI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1060
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-eqz v0, :cond_0

    .line 1061
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleInternalRestart(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    .line 1063
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    const-string v2, "HAP.REQACCOUNT.EXIST_USER"

    const-string v3, "HAP.REQACCOUNT.GET_TC"

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1085
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerUIonSuccessProvisionAPI: User has NOT opted in: isOOBE?: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1087
    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionHelper;->isOOBE(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " hasUserOptedIn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1085
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1090
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1091
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1090
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1092
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1093
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1094
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1095
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1096
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1095
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1097
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1098
    :cond_3
    const-string v0, "HAP.REQACCOUNT.BINARY_SMS_PROVISIONED"

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1099
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1100
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1099
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1101
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHasShownPopupOptIn(Z)V

    .line 1102
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1103
    :cond_4
    const-string v0, "HAP.REQACCOUNT.GET_TBS_TC"

    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1105
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    .line 1106
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1107
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    .line 1106
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1108
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->displayOptIn(I)V

    goto/16 :goto_1

    .line 1110
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "illegal returned callflow name"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1064
    :cond_6
    :goto_0
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1065
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: HAPPY_PATH_REQ_ACCOUNT_EXIST_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 1068
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    .line 1069
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1070
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: NEW_USER"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isHUI6014Err()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: SOC removal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCloudSyncWorkingStopped()V

    .line 1074
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->DELETE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$NewUserOptInCase;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveNewUserOptInCase(I)V

    .line 1075
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->NewUserOptIn_PrmptMsg1:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    goto :goto_1

    .line 1078
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_GET_TC:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_1

    .line 1081
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v2, "handlerUIonSuccessProvisionAPI: TBS_TC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_HUI_TOKEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 1115
    :cond_a
    :goto_1
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->getApiName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1116
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "handlerUIonSuccessProvisionAPI: RequestHUIToken API success"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    if-eqz p1, :cond_b

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    if-nez p1, :cond_b

    .line 1119
    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    :cond_b
    return-void
.end method

.method private initPrefenceValues()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNewUserOptInCase()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserOptedIn()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 126
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreen()I

    move-result v0

    .line 125
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 128
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastScreenUserStopBackup()I

    move-result v0

    .line 127
    invoke-static {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    return-void
.end method

.method private initSharedPreference()V
    .locals 2

    .line 1411
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1412
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    .line 1413
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelResURL(Ljava/lang/String;)V

    .line 1414
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelURL(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMACallBackURL(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1416
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelCreateTime(J)V

    .line 1417
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveOMAChannelLifeTime(J)V

    .line 1418
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionChannelDuration()V

    .line 1419
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearOMASubscriptionTime()V

    return-void
.end method

.method private isAMBSActive()Z
    .locals 3

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 330
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAMBSActive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static isBase64(Ljava/lang/String;)Z
    .locals 1

    .line 138
    const-string v0, "^([A-Za-z0-9+/]{4})*([A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{2}==)?$"

    .line 139
    invoke-static {v0, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private logCurrentWorkingStatus()V
    .locals 3

    .line 1230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCurrentWorkingStatus: [mLastSavedMessageIdAfterStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mNewUserOptInCase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIfSteadyState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserOptedIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLastUIScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mLastScreenUserStopBackup: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHasUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyMsgAppNonPopup(II)V
    .locals 4

    .line 1176
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen to display: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWithTerms_PrmptMsg3:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->ExistingUserOptInWoTerms_PrmpMsg4:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1178
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 1179
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1180
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreenUserStopBackup(I)V

    .line 1182
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    .line 1183
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg9:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    if-lez p2, :cond_2

    .line 1186
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, p1, v2, p2}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 1188
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V
    .locals 8

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProvisionAPIFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonFailedProvisionAPI(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    .line 1155
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mErrorCode:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1156
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 1159
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorCode(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    :goto_0
    return-void
.end method

.method private onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V
    .locals 8

    .line 1018
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProvisionAPISuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handlerUIonSuccessProvisionAPI(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    .line 1021
    iget-object v5, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mCallFlow:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    goto :goto_0

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;->mRequest:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    invoke-static {v0, p0, p1, v1, v2}, Lcom/sec/internal/ims/cmstore/callHandling/successfullCall/SuccessfulCallHandling;->callHandling(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    .line 1029
    :goto_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1030
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIsInternalRestart:Z

    :cond_1
    return-void
.end method

.method private onProvisionReady()V
    .locals 2

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onProvisionReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1009
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveIfSteadyState(Z)V

    .line 1010
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyState_PrmptMsg5:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onProvisionSuccess()V

    .line 1012
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    :cond_0
    return-void
.end method

.method private readNcHost()Z
    .locals 6

    .line 144
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    .line 145
    const-string/jumbo v1, "root/application/1/serviceproviderext/nc_url"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNcHost() nc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isBase64(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 153
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to decrypt the NC"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNcHost()Ljava/lang/String;

    move-result-object v1

    .line 157
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oldnc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " nc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private readNcNmsHost()V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNcHost()Z

    .line 134
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->readNmsHost()Z

    return-void
.end method

.method private readNmsHost()Z
    .locals 5

    .line 167
    new-instance v0, Lcom/sec/ims/settings/RcsConfigurationReader;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;-><init>(Landroid/content/Context;)V

    .line 168
    const-string/jumbo v1, "root/application/1/serviceproviderext/nms_url"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/RcsConfigurationReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readNmsHost() nms="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 173
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 175
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v3, "Failed to decrypt the NMS"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAcsNmsHost(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oldNms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nms="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private registerConfigurationObserver()V
    .locals 5

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/RcsConfigurationReader;->AUTO_CONFIGURATION_URI:Landroid/net/Uri;

    new-instance v2, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;

    new-instance v3, Landroid/os/Handler;

    .line 191
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController$1;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;Landroid/os/Handler;)V

    const/4 p0, 0x1

    .line 190
    invoke-virtual {v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerDataSmsReceiver()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    const-string v1, "*"

    const-string v2, "5586"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-nez v1, :cond_0

    .line 294
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    .line 295
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 298
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->supportSignedBinary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.test.ambsphasev.SIGNEDBINARYSMS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private registerFactoryResetReceiver()V
    .locals 3

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v1, "Updated with FactoryReset Receiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string v0, "NULL Receiver"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 255
    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mFactoryResetReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private registerNetworkChangeReceiver()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNetworkChangeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 219
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 220
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 221
    new-instance v1, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNetworkChangeReceiver:Lcom/sec/internal/ims/cmstore/receiver/NetworkChangeReceiver;

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerSmsReceiver()V
    .locals 3

    .line 228
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const v1, 0x7fffffff

    .line 230
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 231
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    .line 234
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "registerSmsReceiver"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private saveIfSteadyState(Z)V
    .locals 1

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfSteadyState(Z)V

    .line 1211
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIfSteadyState:Z

    return-void
.end method

.method private saveLastScreen(I)V
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreen(I)V

    .line 1216
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private saveLastScreenUserStopBackup(I)V
    .locals 1

    .line 1220
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastScreenUserStopBackup(I)V

    .line 1221
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastScreenUserStopBackup:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    return-void
.end method

.method private saveNewUserOptInCase(I)V
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNewUserOptInCase(I)V

    .line 1201
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mNewUserOptInCase:I

    return-void
.end method

.method private saveUserDeleteAccount(Z)V
    .locals 1

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserDeleteAccount(Z)V

    .line 1226
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserDeleteAccount:Z

    return-void
.end method

.method private saveUserOptedIn(Z)V
    .locals 1

    .line 1205
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserOptedIn(Z)V

    .line 1206
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mHasUserOptedIn:Z

    return-void
.end method

.method private startOOBE()V
    .locals 4

    .line 996
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 999
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;->removeAll()V

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 1001
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onCleanBufferDbRequired()V

    .line 1002
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->initPrefenceValues()V

    .line 1004
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_PHONE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void
.end method

.method private startPhoneStateListener()V
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->startListen()V

    return-void
.end method

.method private stopPhoneStateListener()V
    .locals 0

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mAmbsPhoneStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->stopListen()V

    return-void
.end method

.method private stopProvisioningAPIs()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopProvisioningAPIs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 1195
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterDataSmsReceiver()V
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterDataSmsReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    if-eqz v0, :cond_0

    .line 307
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 308
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mDataSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;

    :cond_0
    return-void
.end method

.method private unregisterSmsReceiver()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 336
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 337
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->logCurrentWorkingStatus()V

    .line 344
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->isAMBSActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    return-void

    .line 348
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 382
    :pswitch_0
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 383
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->RestartMenu_Disable_PrmptMsg16:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-interface {p1, v0, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 376
    :pswitch_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 377
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 378
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object p1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->AMBS_SERVICE_DISABLE:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result p1

    invoke-interface {p0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    goto :goto_0

    .line 405
    :pswitch_2
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    goto :goto_0

    .line 391
    :pswitch_3
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    if-eqz p1, :cond_2

    .line 392
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mPaused:Z

    .line 393
    iget p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    if-eq p1, v1, :cond_1

    .line 395
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 396
    invoke-virtual {p0, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 397
    iput v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mLastSavedMessageIdAfterStop:I

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "resume successfully"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string p1, "no saved event"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    if-eqz p1, :cond_2

    .line 371
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPIFail(Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;)V

    goto :goto_0

    .line 362
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    if-eqz p1, :cond_2

    .line 365
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onProvisionAPISuccess(Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;)V

    goto :goto_0

    .line 356
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    if-eqz p1, :cond_2

    .line 358
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleUIEvent(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    goto :goto_0

    .line 350
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    if-eqz p1, :cond_2

    .line 352
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->handleProvisionEvent(Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 1298
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1299
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 1

    .line 1287
    new-instance p2, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1288
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1

    .line 1277
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/FailedAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x4

    .line 1278
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 3

    .line 1318
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1319
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFixedFlow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1320
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 2

    .line 1242
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1243
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onGoToEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 1244
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onMailBoxMigrationReset()V
    .locals 2

    .line 1423
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMailBoxMigrationReset."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIWorkingStatusProvisionListener:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;->onMailBoxMigrationReset()V

    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 5

    .line 1398
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->SteadyStateError_ErrMsg7:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string/jumbo v3, "pop_up"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1400
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    invoke-interface {v0, v4}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    .line 1401
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->notifyMsgAppNonPopup(II)V

    .line 1402
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->saveLastScreen(I)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 7

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mICloudMessageManagerHelper:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/callHandling/errorHandling/ErrorRuleHandling;->handleErrorHeader(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 2

    .line 1260
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1261
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 1

    .line 1253
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/SuccessfulAPICallResponseParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1255
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/cmstore/params/UIEventParam;-><init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 324
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public pause()V
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    .line 1353
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pauseService()V
    .locals 2

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 1358
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public resetDataReceiver()V
    .locals 2

    .line 1439
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset DataSmsReceiver "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->unregisterDataSmsReceiver()V

    .line 1441
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->registerDataSmsReceiver()V

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1347
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 1348
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setOnApiSucceedOnceListener(Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler$OnApiSucceedOnceListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public start()V
    .locals 3

    .line 1338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->CHK_INITIAL_STATE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1362
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 1363
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public update(I)Z
    .locals 3

    .line 1368
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1369
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1370
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public updateDelay(IJ)Z
    .locals 3

    .line 1375
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1376
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delayed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1378
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateDelayRetry(IJ)Z
    .locals 4

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mUIInterface:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg11:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v1

    const-string v2, "non_pop_up"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 1385
    invoke-static {p1}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->valueOf(I)Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    move-result-object p1

    .line 1386
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " delayed retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 1388
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result p0

    return p0
.end method

.method public updateMessage(Landroid/os/Message;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
