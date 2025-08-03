.class public Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.super Lcom/sec/ims/IImsService$Stub;
.source "ImsServiceStub.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# static fields
.field private static final LISTENER_DEFAULT_INDEX:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field private static final SOFT_RESET_PERMISSION:Ljava/lang/String; = "com.sec.android.settings.permission.SOFT_RESET"

.field private static final TC_POPUP_USER_ACCEPT:Ljava/lang/String; = "info/tc_popup_user_accept"

.field private static mIsExplicitGcCalled:Z

.field private static mIsImsAvailable:Z

.field private static final mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mUserUnlocked:Z

.field private static sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# instance fields
.field private mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

.field private mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

.field private mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field private mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

.field private mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

.field private mContext:Landroid/content/Context;

.field private mCoreHandler:Landroid/os/Handler;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

.field private mDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

.field private mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

.field private mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

.field private mIilManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;",
            ">;"
        }
    .end annotation
.end field

.field private mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field private mJibeRcsEnabler:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

.field private final mListenerTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack<",
            "+",
            "Landroid/os/IInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMvnoController:Lcom/sec/internal/extension/mvno/MvnoController;

.field private mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

.field private mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

.field private mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

.field private mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private mSequentialInitializer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

.field private mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method public static synthetic $r8$lambda$-Ut4x5g98o36R7MmTqafe_sNMXY(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$4(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$0IxIM0gkUkkc3jsWxqpPrRE1uIU(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2fUDTRUM_q2_Sy7NJUL38KO7O_Q(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$33Wm0FNgWpZ7GG1urVo4WM0eML4(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$linkToPhoneDeath$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$LWqg6OUnjc1_PKWXwaqS84nF6-M(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XzThOSOgEUsuHe4LomaxVoTcM-c(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bReo7XH488bMM2OJfr97nR56rz0(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$7(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gfu9ZN3wmijBEleMVd4a4WFtTi0(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$i9yO6VDv2R5xylmD3oJKvycbnnU(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListenerForSlot$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q1VcuwT4lXXZNJAXtTX3s9uF5CE()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$explicitGC$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qfvIlcZB9mRaVuDeyydetwhSGPw(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$tqb8dClm-kmbQ2HDrjv4h4cThkI(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$12(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v-iiVUVBUoEWwcsPHFCaCJm1gpM(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$hasCrossSimImsService$10(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$x2shidFUshsTmeCFH6sz7H_t5Sg(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$isServiceAvailable$11(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerTokenMap(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcEpdgManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->factoryReset(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSmkVersion(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPreloadedSmk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPreloadedSmk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDeviceConfigService(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->startDeviceConfigService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSmkVerData(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsImsAvailable()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmUserUnlocked(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smexplicitGC()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 184
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 190
    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 191
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    .line 192
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    .line 193
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 287
    invoke-direct {p0}, Lcom/sec/ims/IImsService$Stub;-><init>()V

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    .line 201
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 202
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 203
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    .line 206
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 207
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 208
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 209
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 210
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 213
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 214
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 215
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 216
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    .line 217
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 218
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 219
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 225
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    .line 227
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mMvnoController:Lcom/sec/internal/extension/mvno/MvnoController;

    .line 229
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 289
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 290
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 291
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 294
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkUt(Landroid/content/Context;)V

    return-void
.end method

.method private changeOpModeByRcsSwtich(ZZI)V
    .locals 1

    if-eq p1, p2, :cond_1

    .line 778
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "info/tc_popup_user_accept"

    .line 779
    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 778
    invoke-static {p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 783
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 785
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p1, p3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    .line 789
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/config/ConfigModule;->changeOpMode(ZII)V

    :cond_1
    return-void
.end method

.method private static checkUt(Landroid/content/Context;)V
    .locals 2

    .line 367
    const-string v0, "com.salab.issuetracker"

    .line 369
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 370
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 371
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker found should be UT device"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 372
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->setIsUt(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker not found"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private createModules()V
    .locals 12

    .line 527
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v0, "createModules started"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 532
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    .line 534
    const-string v2, "Creating SimManagers."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 536
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 537
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 538
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 539
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    .line 543
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating IIilManager: count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ge v3, v2, :cond_1

    .line 545
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3, p0}, Lcom/sec/internal/ims/core/iil/IilManager;-><init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 546
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v4, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 549
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating SipTestManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->createSipTestManager(Landroid/content/Context;)V

    .line 552
    const-string v2, "Creating MvnoController"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Lcom/sec/internal/extension/mvno/MvnoController;

    invoke-direct {v2, v0}, Lcom/sec/internal/extension/mvno/MvnoController;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mMvnoController:Lcom/sec/internal/extension/mvno/MvnoController;

    .line 554
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    const-string v2, "Creating WfcEpdgManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 558
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    const-string v2, "Creating PdnController."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v2, Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/PdnController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 562
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    const-string v2, "Creating DmConfigModule."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v2, Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 566
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    const-string v2, "Creating CmcAccountManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 570
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    const-string v2, "Creating RcsPolicyManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 574
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    const-string v2, "Creating JibeRcsEnabler"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v2, Lcom/sec/internal/ims/settings/JibeRcsEnabler;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mJibeRcsEnabler:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

    .line 578
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    const-string v2, "Creating RegistrationManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v11, Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 582
    invoke-static {v5}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v10, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    move-object v2, v11

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/core/RegistrationManagerBase;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V

    iput-object v11, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 583
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    const-string v2, "Creating ConfigModule."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/config/ConfigModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 587
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    const-string v2, "Creating HandlerFactory."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->createStackHandler(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 591
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    const-string v2, "Creating ServiceModuleManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v9, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-object v2, v9

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;)V

    iput-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 596
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    const-string v2, "Creating AECModule."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    new-instance v2, Lcom/sec/internal/ims/aec/AECModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/aec/AECModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 600
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    const-string v2, "Creating GeolocationController."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v2, Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v3, v0, v4}, Lcom/sec/internal/ims/core/GeolocationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 604
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v2, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/ims/imsservice/CallStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 607
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    const-string v2, "Creating ImsDiagnosticMonitorNotificationManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v2, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 611
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    const-string v2, "Creating NtpTimeController."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    new-instance v1, Lcom/sec/internal/ims/core/NtpTimeController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/NtpTimeController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 615
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    new-instance v1, Lcom/sec/internal/ims/core/RawSipManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/core/RawSipManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    .line 620
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 621
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V

    .line 622
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getRegistrationStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V

    .line 623
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 624
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/DmConfigModule;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 626
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 817
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->getInstance()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/log/CriticalLogger;->flush()V

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump ims from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 826
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SimMobility Feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Enabled"

    goto :goto_0

    :cond_1
    const-string v2, "Disabled"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 831
    new-array v0, v0, [Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/helper/SimpleEventLog;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    const/4 v2, 0x2

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    const/4 v2, 0x3

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 832
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    const/4 v2, 0x4

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;)V

    const/4 v2, 0x5

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/interfaces/ims/aec/IAECModule;)V

    const/4 v2, 0x6

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    const/4 v2, 0x7

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 833
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    const/16 v2, 0x8

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    const/16 v2, 0x9

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 834
    invoke-static {v2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;

    invoke-direct {v4, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    const/16 v2, 0xa

    aput-object v4, v0, v2

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 835
    invoke-static {v2, v1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    const/16 v1, 0xb

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 836
    invoke-static {v1, v3}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    const/16 v1, 0xc

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 837
    invoke-static {v1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;)V

    const/16 v1, 0xd

    aput-object v2, v0, v1

    .line 831
    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 838
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 840
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    const-wide/16 v2, 0x7d0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 842
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 844
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x0

    .line 850
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 851
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 853
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;

    invoke-direct {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump: Exception occurs! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 855
    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private enableRcsMainSwitchByPhoneId(ZI)V
    .locals 5

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 797
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcsMainSwitchByPhoneId: oldValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 803
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 804
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    .line 805
    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 808
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 810
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    throw p0
.end method

.method private static explicitGC()V
    .locals 2

    .line 350
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 356
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    :cond_1
    return-void
.end method

.method private factoryReset(I)V
    .locals 6

    if-ltz p1, :cond_3

    .line 873
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 879
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 880
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 884
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "factoryReset"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 887
    const-string/jumbo v1, "volte_domestic_default_enabled"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 888
    const-string/jumbo v3, "vt_default_enabled"

    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 889
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reset to default] Volte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 893
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    return-void

    .line 881
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : skip reset due to no SIM"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 874
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : invalid phoneId"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    .line 298
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "instance is null..."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 303
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 305
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 308
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 319
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSmkVersion()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 499
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 500
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 501
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get SMK version Success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 503
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to get versionName"

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected static getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IInterface;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "$"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasVoImsFeature(Ljava/lang/String;II)Z
    .locals 8

    .line 693
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 697
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVolteFeature - no simMgr"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 709
    :cond_0
    const-string v1, "mmtel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move p1, v0

    move v1, v2

    move v3, v1

    goto :goto_0

    .line 711
    :cond_1
    const-string/jumbo v1, "smsip"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    move p1, v2

    move v3, p1

    goto :goto_0

    .line 713
    :cond_2
    const-string v1, "mmtel-video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    move v3, v0

    move p1, v2

    move v1, p1

    :goto_0
    const/16 v4, 0x12

    if-ne p2, v4, :cond_3

    move p2, v0

    move p1, v2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 728
    :goto_1
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object p0

    .line 729
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 730
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - mnoInfo\'s size is 0"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 734
    :cond_4
    const-string v4, "imsSwitchType"

    const/4 v5, -0x1

    invoke-static {p0, v4, v5}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 736
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - imsswitchType not exist"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    if-eqz v4, :cond_c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    goto/16 :goto_4

    .line 751
    :cond_6
    const-string v4, "enableIms"

    invoke-static {p0, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    .line 752
    const-string v6, " false"

    const-string v7, "hasVoImsFeature - "

    if-nez v5, :cond_7

    .line 753
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_7
    if-eqz p2, :cond_8

    .line 757
    const-string p2, "enableServiceVowifi"

    invoke-static {p0, p2, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 758
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_8
    if-eqz p1, :cond_9

    .line 762
    const-string p1, "enableServiceVolte"

    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    .line 763
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    .line 765
    const-string p1, "enableServiceSmsip"

    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    .line 766
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    .line 768
    const-string p1, "enableServiceVilte"

    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_b

    .line 769
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_3
    return v0

    .line 741
    :cond_c
    :goto_4
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - No SIM or GCF or LABSIM or Softphone or Default ImsSwitch"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 716
    :cond_d
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no VoLTE feature, no need to check mnoInfo"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private init()V
    .locals 2

    .line 630
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 634
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 637
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 640
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RawSipManager;->init(Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V

    .line 644
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V

    .line 646
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->isTapiAuthorisationSupports()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 648
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->start()V

    .line 653
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xa9c

    if-lt v0, v1, :cond_1

    .line 654
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 657
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDefaultSmsPackageChangeReceiver()V

    .line 661
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V

    .line 662
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerUserUnlockReceiver()V

    .line 663
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->linkToPhoneDeath()V

    .line 664
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkGrantAppOpsPermission()V

    return-void
.end method

.method private isEnableServiceAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1706
    const-string p0, "com.samsung.advp.imssettings"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.phone"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.android.settings"

    .line 1707
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "datachannel"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isImsAvailable()Z
    .locals 1

    .line 361
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method private isPermissionGranted()Z
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    .line 864
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPreloadedSmk(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 509
    const-string p0, "1.3.31"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$dump$2(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 838
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$dump$3()V
    .locals 3

    .line 842
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.sec.ims.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "dump"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static synthetic lambda$dump$4(Ljava/util/concurrent/Future;)V
    .locals 1

    const/4 v0, 0x1

    .line 853
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private static synthetic lambda$explicitGC$0()V
    .locals 2

    .line 352
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Call explicit GC"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/sec/internal/helper/os/SystemWrapper;->explicitGc()V

    return-void
.end method

.method private synthetic lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    .line 1227
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$hasCrossSimImsService$10(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x12

    .line 1574
    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$isServiceAvailable$11(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1633
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$linkToPhoneDeath$13()V
    .locals 2

    .line 2288
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Phone Crashed. Cleanup IMS"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2289
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(I)V

    .line 2290
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->cleanUpModules()V

    .line 2291
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Restart service"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    const v1, -0xfffffff

    .line 2292
    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    const/4 p0, 0x0

    .line 2293
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$12(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 2187
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$7(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1365
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 675
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1374
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListenerForSlot$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1399
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1156
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private linkToPhoneDeath()V
    .locals 3

    .line 2283
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->tryGet()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2286
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Link to Phone Binder Death"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2287
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2296
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 323
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    if-eqz v1, :cond_0

    .line 324
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 328
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating IMSService"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 329
    invoke-static {v2}, Lcom/sec/internal/log/IMSLogTimer;->setLatchStartTime(I)V

    .line 330
    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setVersionCodeProp(Landroid/content/Context;)V

    .line 331
    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 332
    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->createModules()V

    .line 333
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->init()V

    .line 335
    const-string p0, "Done."

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PID:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, -0x10000000

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 338
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method private registerFactoryResetReceiver()V
    .locals 7

    .line 391
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 392
    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "com.sec.android.settings.permission.SOFT_RESET"

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageManagerReceiver()V
    .locals 3

    .line 424
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPackageMgrListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 426
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 427
    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 428
    const-string v1, "com.samsung.android.messaging"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 429
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 434
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeCallback(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2402
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    if-eqz p0, :cond_0

    .line 2404
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->reset()V

    .line 2406
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mListener:Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2408
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to removeCallback by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static setVersionCodeProp(Landroid/content/Context;)V
    .locals 3

    .line 343
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 344
    const-string/jumbo v0, "sys.ims.versionCode"

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 346
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private startDeviceConfigService()V
    .locals 3

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "call SMK start"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 514
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 515
    const-string v1, "com.samsung.ims.smk"

    const-string v2, "com.samsung.ims.smk.DeviceUpdateService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private writeSmkVerData(Ljava/lang/String;)V
    .locals 3

    .line 489
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 491
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    const-string v1, "SMKV"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public changeAudioPath(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1848
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeAudioPathForSlot(II)V

    return-void
.end method

.method public changeAudioPathForSlot(II)V
    .locals 3

    .line 1853
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1857
    const-string p0, "VolteServiceModule is not ready"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1861
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    return-void
.end method

.method public checkGrantAppOpsPermission()V
    .locals 10

    .line 2467
    const-string v0, "com.sec.imsservice"

    const-class v1, Ljava/lang/String;

    :try_start_0
    const-string v2, "android.app.AppOpsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2468
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    .line 2470
    const-string/jumbo v4, "semCheckOpWriteSms"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v9, 0x1

    aput-object v1, v6, v9

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2471
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v3, v6}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 2474
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkGrantAppOpsPermission already allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 2476
    :cond_0
    const-string/jumbo v4, "semSetModeWriteSms"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    aput-object v7, v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 2477
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v2, v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2481
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGrantAppOpsPermission exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterAdhocProfileByPhoneId(II)V

    return-void
.end method

.method public deregisterAdhocProfileByPhoneId(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1251
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(II)V

    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .locals 1

    .line 1270
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    return-void
.end method

.method public deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    .locals 3

    .line 1275
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(Ljava/util/List;ZI)V

    return-void
.end method

.method public dump()V
    .locals 1

    const/4 v0, 0x0

    .line 2060
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 2068
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1723
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .locals 4

    .line 1728
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1730
    const-string p0, "RCS isn\'t allowed by MDM. Don\'t enable RCS"

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1738
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1740
    const-string v2, "com.samsung.advp.imssettings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1741
    const-string v0, "Called by ImsSettings app. Change main switch value."

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1742
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsMainSwitchByPhoneId(ZI)V

    return-void

    .line 1746
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1748
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRcs: oldValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1749
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 1754
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    .line 1755
    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1761
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1676
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    return-void
.end method

.method public enableServiceByPhoneId(Ljava/lang/String;ZI)V
    .locals 3

    .line 1681
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1683
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isEnableServiceAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1684
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deprecated] enableService is called by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1686
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1688
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1689
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1692
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1693
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1696
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_1

    .line 1690
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1699
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_2
    return-void

    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1700
    throw p0
.end method

.method public enableVoLte(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1712
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableVoLteByPhoneId(ZI)V

    return-void
.end method

.method public enableVoLteByPhoneId(ZI)V
    .locals 3

    .line 1717
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public finishDmConfig(II)V
    .locals 3

    .line 1923
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1925
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->finishDmConfig(II)V

    return-void
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 1

    .line 1297
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    return-void
.end method

.method public forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 3

    .line 1301
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 0

    .line 2109
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    return-object p0
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

    .line 2154
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getAllServiceModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 3

    .line 2206
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 3

    .line 2212
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 2041
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .locals 3

    .line 1770
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1775
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTotalCallCount(I)I

    move-result v0

    .line 1776
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVideoCallCount(I)I

    move-result v1

    .line 1777
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getDowngradedCallCount(I)I

    move-result v2

    .line 1778
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getE911CallCount(I)I

    move-result p0

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0

    .line 1771
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 0

    .line 2079
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-object p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 3

    .line 2310
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2311
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2313
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .locals 0

    .line 2114
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 0

    .line 2099
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3

    .line 1899
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1902
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1904
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1905
    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 2169
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 1214
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 1219
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 1

    .line 1784
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpsFbCallCount(I)I

    move-result p0

    return p0

    .line 1785
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .locals 2

    .line 2138
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    if-nez v0, :cond_0

    .line 2139
    new-instance v0, Lcom/sec/internal/ims/fcm/FcmHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/fcm/FcmHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    .line 2141
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 0

    .line 2123
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    return-object p0
.end method

.method public getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z
    .locals 3

    .line 2030
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToInteger(Ljava/lang/String;II)I
    .locals 3

    .line 2024
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2018
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 0

    .line 2104
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 1

    .line 2146
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2149
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 0

    .line 2133
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 2036
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 3

    .line 1474
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1488
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    const-string p0, ""

    return-object p0
.end method

.method public getMasterValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1482
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;
    .locals 0

    .line 2118
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mMvnoController:Lcom/sec/internal/extension/mvno/MvnoController;

    return-object p0
.end method

.method public getNetworkType(I)I
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCurrentNetwork(I)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    const/16 v0, 0x11

    if-gt p0, v0, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x12

    if-ne p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSaCallCount(I)I
    .locals 1

    .line 1792
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNrSaCallCount(I)I

    move-result p0

    return p0

    .line 1793
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 0

    .line 2128
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 2074
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    return-object p0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 908
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .locals 0

    .line 2164
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 0

    .line 2084
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 3

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    .line 1227
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    .line 1228
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsProfileType: rcsProfile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1187
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1188
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1196
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1197
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 1205
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1206
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 2094
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method public getRttMode(I)I
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-string v0, "getRttMode"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1958
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getRttMode()I

    move-result p0

    return p0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .locals 3

    .line 2217
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSemBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 0

    .line 2089
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2046
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 2050
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2051
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideocallType()I
    .locals 2

    .line 1875
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1878
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 1876
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 0

    .line 2159
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 520
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->handleIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hasCrossSimImsService(I)Z
    .locals 7

    .line 1562
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1563
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1564
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1565
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    const/16 v0, 0x12

    .line 1566
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 1567
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1569
    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1574
    :cond_1
    :goto_1
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1576
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasVoLteSim()Z
    .locals 1

    .line 1661
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public hasVoLteSimByPhoneId(I)Z
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz p0, :cond_0

    .line 1668
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->hasVoLteSim(I)Z

    move-result p0

    return p0

    .line 1670
    :cond_0
    const-string p0, "hasVoLteSimByPhoneId - no mRegistrationManager"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2328
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    const-string p1, "isCmcEmergencyCallSupported"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2333
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;I)Z
    .locals 3

    .line 2338
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    const-string v0, "isCmcEmergencyNumber"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2343
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 3

    .line 2348
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2349
    const-string v0, "isCmcPotentialEmergencyNumber"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2350
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2353
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCrossSimCallingRegistered(I)Z
    .locals 6

    .line 1609
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1614
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 1615
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1616
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 1617
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCrossSimCallingRegistered true"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1621
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCrossSimCallingRegistered false"

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public isCrossSimCallingSupported()Z
    .locals 4

    .line 1597
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1600
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1602
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cross_sim_menu_enable"

    const/4 v3, -0x1

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1598
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .locals 3

    .line 1581
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1584
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1588
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cross_sim_menu_enable"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 1582
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCrossSimPermanentBlocked(I)Z
    .locals 2

    .line 2380
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2384
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isCrossSimPermanentBlocked(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2381
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 5

    .line 2223
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    const-string v0, "OMADM_VALUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2225
    const-string p1, "93"

    const-string v0, "94"

    const-string v3, "31"

    filled-new-array {p1, v0, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 2226
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2227
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 2228
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2229
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .line 2231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADM Default Value [VoLTE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", LVC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", EAB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 2233
    :cond_1
    const-string v0, "SMS_SETTING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2234
    const-string p1, "9"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 2235
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2236
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMS Setting Default Value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2239
    const-string p1, "3GPP2"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2241
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is wrong value on isDefaultDmValue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method public isForbidden()Z
    .locals 2

    .line 1800
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1801
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isForbiddenByPhoneId(I)Z
    .locals 1

    .line 1808
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1809
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isImsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 1506
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isImsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isImsEnabledByPhoneId(I)Z
    .locals 3

    .line 1511
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "ims"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isNonVerifiedMno(I)Z
    .locals 3

    .line 1643
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1644
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mMvnoController:Lcom/sec/internal/extension/mvno/MvnoController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/extension/mvno/MvnoController;->isNonVerifiedMno(I)Z

    move-result p0

    return p0
.end method

.method public isQSSSuccessAuthAndLogin(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled()Z
    .locals 1

    .line 1552
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 3

    .line 2198
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2199
    const-string v0, "isRcsEnabled:"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2201
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isRegistered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1176
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1180
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_0

    .line 1181
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1182
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1177
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRttCall(I)Z
    .locals 3

    .line 1932
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    const-string v0, "isRttCall"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRttCall(I)Z

    move-result p0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 5

    .line 1627
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoImsFeature(Ljava/lang/String;II)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1629
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isServiceAvailable: VoImsFeature : ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1632
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;

    invoke-direct {v3, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1634
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    .line 1636
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rat: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", profileFind:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Enabled:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1557
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 3

    .line 1650
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1653
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1655
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1656
    throw p0
.end method

.method public isSimMobilityActivated(I)Z
    .locals 0

    .line 685
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result p0

    return p0
.end method

.method public isSimMobilityActivatedForRcs(I)Z
    .locals 1

    .line 689
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSupportVoWiFiDisable5GSA(I)Z
    .locals 2

    .line 2358
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2361
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isSupportVoWiFiDisable5GSA"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2362
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2365
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSupportVoWiFiDisable5GSA(I)Z

    move-result p0

    return p0

    .line 2359
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVoLteEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 1517
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isVoLteEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isVoLteEnabledByPhoneId(I)Z
    .locals 3

    .line 1522
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVolteEnabledFromNetwork(I)Z
    .locals 1

    .line 1528
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteServiceStatus(I)Z

    move-result p0

    return p0

    .line 1529
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVolteSupportECT()Z
    .locals 2

    .line 1536
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT()Z

    move-result p0

    return p0

    .line 1537
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVolteSupportEctByPhoneId(I)Z
    .locals 1

    .line 1544
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1547
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result p0

    return p0

    .line 1545
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyImsReady(ZI)V
    .locals 3

    .line 2267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 2268
    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2269
    const-string v1, "android:phone_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2270
    const-string v1, "SIMMO"

    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2271
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2272
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 2274
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    .line 2276
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2277
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsReady(Z)V

    .line 2279
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 1

    .line 1235
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3

    .line 1240
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    const-string/jumbo v0, "registerAutoConfigurationListener"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 1117
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1118
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerCmcRecordingListener(ILcom/sec/ims/cmc/ICmcRecordingListener;)V
    .locals 2

    .line 2319
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCmcRecordingListener"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2320
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2322
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerCmcRecordingListener(ILcom/sec/ims/cmc/ICmcRecordingListener;)V

    :cond_0
    return-void
.end method

.method public registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 2

    .line 1408
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1411
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1413
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1414
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 1409
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCmsRegistrationListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreService;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerDefaultSmsPackageChangeReceiver()V
    .locals 3

    .line 380
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 381
    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1437
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const-string/jumbo v0, "registerDialogEventListener"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1439
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1451
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1452
    const-string/jumbo v0, "registerDialogEventListener"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1453
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1454
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1455
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    .line 1885
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    const-string/jumbo v0, "registerDmValueListener:"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;
    .locals 3

    .line 1337
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEpdgListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz v0, :cond_0

    .line 1340
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 1342
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;
    .locals 3

    .line 998
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string/jumbo v0, "registerImSessionListener:"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1002
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 1004
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string/jumbo v0, "registerImSessionListenerByPhoneId"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 1017
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1018
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string/jumbo v0, "registerImsOngoingFtListener"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1062
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_0
    return-object v0
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v0, "registerImsOngoingFtListenerByPhoneId"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1072
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1073
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1075
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_0
    return-object v1
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .locals 3

    .line 2179
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2183
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 2186
    const-string p2, "Requested registerListener without phoneId. register it by all phoneId."

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 2191
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 2192
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 2180
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2

    .line 1361
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1364
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested registerListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1362
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 2

    .line 1379
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1383
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1380
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerProfile(Ljava/util/List;)V
    .locals 1

    .line 1258
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerProfileByPhoneId(Ljava/util/List;I)V

    return-void
.end method

.method public registerProfileByPhoneId(Ljava/util/List;I)V
    .locals 3

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Ljava/util/List;I)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;
    .locals 3

    .line 1984
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    const-string/jumbo v0, "registerRttEventListener"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1986
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 1987
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1988
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;
    .locals 3

    .line 668
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSimMobilityStatusListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 674
    const-string p2, "Requested registerSimMobilityStatusListener without phoneId. register it by all phoneId."

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 679
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 680
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 669
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;
    .locals 2

    .line 1137
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1141
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1138
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerUserUnlockReceiver()V
    .locals 2

    .line 386
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 387
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V
    .locals 0

    .line 2302
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2304
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendCmcRecordingEvent(IILcom/sec/ims/cmc/CmcRecordingInfo;)V

    :cond_0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 3

    .line 1307
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendIidToken(Ljava/lang/String;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 3

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMsisdnNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 1963
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttMessage, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 3

    .line 1977
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    const-string/jumbo v0, "sendRttSessionModifyRequest"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 3

    .line 1970
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyResponse, accept="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public sendTryRegister()V
    .locals 1

    .line 1281
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendTryRegisterCms(I)V
    .locals 3

    .line 1292
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 3

    .line 959
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendVerificationCode(Ljava/lang/String;I)V

    return-void
.end method

.method public setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 926
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveImpu: impu "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to phoneId"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p1, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 929
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setActiveImpu(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 935
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveMsisdn: msisdn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 938
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 942
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    const-string/jumbo p2, "setActiveMsisdn: unset activeMsisdn."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 944
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-nez p2, :cond_2

    .line 950
    const-string/jumbo p0, "setActiveMsisdn: not found!"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 954
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setAutomaticMode(IZ)V
    .locals 3

    .line 1939
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutomaticMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1941
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setCrossSimPermanentBlocked(IZ)V
    .locals 1

    .line 2370
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2373
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2374
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setCrossSimPermanentBlocked(IZ)V

    :cond_0
    return-void

    .line 2371
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 4

    .line 2249
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const-string v0, "OMADM_VALUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2252
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v2, "93"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "94"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "31"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2257
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 2259
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is wrong value on setDefaultDmValue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string p0, "ePDN setup failure was changed to onPreciseDataConnectionStateChanged"

    invoke-static {p1, p4, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setIsimLoaded()V
    .locals 3

    .line 914
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setIsimLoaded()V

    return-void
.end method

.method public setNrInterworkingMode(II)V
    .locals 1

    .line 2391
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2394
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2395
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setNrInterworkingMode(II)V

    :cond_0
    return-void

    .line 2392
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .locals 0

    .line 1499
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProvisionedValue(II)V
    .locals 0

    .line 1494
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRttMode(II)V
    .locals 3

    .line 1946
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1948
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(II)V

    return-void
.end method

.method public setSimRefreshed()V
    .locals 3

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSimRefreshed()V

    return-void
.end method

.method public setVideocallType(I)Z
    .locals 1

    .line 1866
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1869
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    .line 1867
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 1

    .line 2174
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startDmConfig(I)I
    .locals 3

    .line 1916
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1918
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/DmConfigModule;->startDmConfig(I)I

    move-result p0

    return p0
.end method

.method public startLocalRingBackTone(III)I
    .locals 3

    .line 1822
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1826
    const-string p0, "VolteServiceModule is not ready"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1830
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public stopLocalRingBackTone()I
    .locals 3

    .line 1835
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1839
    const-string p0, "VolteServiceModule is not ready"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1843
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public suspendRegister(ZI)V
    .locals 3

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1816
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 3

    .line 2009
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2010
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz p0, :cond_0

    .line 2011
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->triggerAutoConfigForApp(I)V

    :cond_0
    return-void
.end method

.method public unRegisterEpdgListener(Ljava/lang/String;)V
    .locals 3

    .line 1349
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1353
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IEpdgListener;

    if-eqz p1, :cond_1

    .line 1354
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_1

    .line 1355
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    :cond_1
    return-void
.end method

.method public unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    .locals 3

    .line 1124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string/jumbo v0, "unregisterAutoConfigurationListener"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1129
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IAutoConfigurationListener;

    if-eqz p1, :cond_1

    .line 1131
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/sec/ims/ImsEventListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    .locals 2

    .line 1420
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1426
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1427
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_1

    .line 1429
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_1
    return-void

    .line 1421
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterCmsRegistrationListenerByPhoneId(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1444
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    const-string/jumbo v0, "unregisterDialogEventListener"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1446
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterDialogEventListenerByToken(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1465
    :cond_0
    const-string/jumbo v0, "unregisterDialogEventListener"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1466
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IDialogEventListener;

    if-eqz p2, :cond_1

    .line 1468
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    .line 1892
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const-string/jumbo v0, "unregisterDmValueListener:"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public unregisterImSessionListener(Ljava/lang/String;)V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1028
    :cond_0
    const-string/jumbo v0, "unregisterImSessionListener:"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_1

    .line 1031
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1033
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1044
    :cond_0
    const-string/jumbo v0, "unregisterImSessionListenerByPhoneId"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1045
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_1

    .line 1047
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1049
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtListener(Ljava/lang/String;)V
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1086
    :cond_0
    const-string/jumbo v0, "unregisterImsOngoingFtListener"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p1, :cond_1

    .line 1089
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1091
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1102
    :cond_0
    const-string/jumbo v0, "unregisterImsOngoingFtListenerByPhoneId"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1104
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 1107
    invoke-interface {v0, p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1370
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested unregisterListener without phoneId. unregister it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1371
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    .locals 2

    .line 1388
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1391
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1394
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1395
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1398
    const-string p2, "Requested unRegisterListener without phoneId. register it by all phoneId."

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1401
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_2
    :goto_0
    return-void

    .line 1389
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterRttEventListener(ILjava/lang/String;)V
    .locals 3

    .line 1994
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1995
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1998
    :cond_0
    const-string/jumbo v0, "unregisterRttEventListener"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1999
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IRttEventListener;

    if-eqz p2, :cond_1

    .line 2001
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
    .locals 2

    .line 1146
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1152
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1153
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ISimMobilityStatusListener;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1156
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1158
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    :cond_2
    :goto_0
    return-void

    .line 1147
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateConfigValues(Landroid/content/ContentValues;II)Z
    .locals 3

    .line 1910
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/DmConfigModule;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1319
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method
