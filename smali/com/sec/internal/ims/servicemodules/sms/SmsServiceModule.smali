.class public Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "SmsServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
.implements Lcom/sec/internal/ims/util/IMessagingAppInfoListener;


# static fields
.field private static final ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

.field private static final ALTERNATIVE_SERVICE:Ljava/lang/String; = "application/3gpp-ims+xml"

.field private static final ASVC_INITIAL_REGISTRATION:Ljava/lang/String; = "initial-registration"

.field private static final ASVC_RESTORATION:Ljava/lang/String; = "restoration"

.field protected static final EMERGENCY_GEOLOCATION_UPDATED:I = 0xa

.field protected static final EMERGENCY_REGISTER_DONE_EVENT:I = 0x5

.field protected static final EMERGENCY_REGISTER_FAIL_EVENT:I = 0x6

.field protected static final EMERGENCY_REGISTER_START_EVENT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "SmsServiceModule"

.field private static final MAX_RETRANS_COUNT_ON_RP_ERR:I = 0x1

.field public static final NAME:Ljava/lang/String; = "SmsServiceModule"

.field private static final NOTI_503_OUTAGE:I = 0x309

.field private static final NOTI_DEREGISTERED:I = 0x3e7

.field public static final NOTI_INTERNAL_ADDR_ERR:I = 0x2711

.field public static final NOTI_INTERNAL_BASE:I = 0x2710

.field public static final NOTI_INTERNAL_EMERGENCY_REGI_FAIL:I = 0x2712

.field public static final NOTI_INTERNAL_END:I = 0x2af8

.field public static final NOTI_INTERNAL_INVALID_PDU:I = 0x2715

.field public static final NOTI_INTERNAL_LIMITED_REGI:I = 0x2714

.field public static final NOTI_INTERNAL_NO_RP_ACK:I = 0x2713

.field private static final NOTI_SUBMIT_REPORT_TIMEOUT:I = 0x321

.field protected static final RESET_EMERGENCY_GEOLOCATION_STATE:I = 0x8

.field private static final RETRANS_ON_RP_ERROR_TIMEOUT:I = 0x3

.field protected static final RRC_CONNECTION_EVENT:I = 0x2

.field protected static final SCBM_TIMEOUT_EVENT:I = 0x7

.field protected static final SEND_SMS_EVENT:I = 0x3

.field private static final SIP_R_CAUSE_200_OK:I = 0xc8

.field private static final SIP_R_CAUSE_LIMITED:I = 0x194

.field private static final SIP_R_CAUSE_TEMP_ERROR:I = 0x1e0

.field protected static final SMS_EVENT:I = 0x1

.field private static final STATE_TIMEOUT:I = 0x1

.field private static final SUBMIT_REPORT_TIMEOUT:I = 0x2

.field protected static final TIMEOUT_EMERGENCY_GEOLOCATION_UPDATE:I = 0x9

.field private static final TIMER_EMERGENCY_REGISTER_FAIL:I = 0x2710

.field private static final TIMER_RESET_EMERGENCY_GEOLOCATION:I = 0x3e8

.field private static final TIMER_STATE:I = 0x2bf20

.field private static final TIMER_SUBMIT_REPORT:I = 0x9c40

.field private static final TIMER_SUBMIT_REPORT_ORANGE:I = 0x4e20

.field private static final TIMER_SUBMIT_REPORT_SPR:I = 0x2710

.field private static final TIMER_VZW_SCBM:I = 0x493e0

.field private static final VZW_E911_FALSE:I = 0x0

.field private static final VZW_E911_REREGI:I = 0x2

.field private static final VZW_E911_TRUE:I = 0x1


# instance fields
.field private MAX_RETRANS_COUNT:I

.field private MAX_RETRANS_COUNT_SPR:I

.field private m3GPP2SendingMsgId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallState:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

.field private mEmergencyPendingQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/LinkedList<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmergencyRegiProcessiong:[Z

.field private final mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

.field private mIsDeregisterTimerRunning:[Z

.field private mIsDeregistering:[Z

.field private mIsGeolocationResetTimerStarted:Z

.field private mIsInScbm:[Z

.field private mIsRetryIfNoSubmitReport:Z

.field private mLastMOContentType:Ljava/lang/String;

.field final mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/sms/ISmsServiceEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxPhoneCount:I

.field private mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

.field private mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRetransCount:I

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mStorageAvailable:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$DnssRL8lW5Gdm2K6ERKKR4mXZoo(Lcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$deRegisterForSMSStateChange$4(Lcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Gkk-mPM-HeCycj3WcNOeqJXGPx8(ILcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$registerForSMSStateChange$3(ILcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IZ-uRfaUTf1tzP5QVaN9gtmM5sg(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$onReceive3GPP2IncomingSms$1(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PiAV8m1Dtc6mUVjPl77SoPa4flQ(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$onReceive3GPPIncomingSms$0(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Tj06laYZb0XgdJ9C0CYxVAc6gBA(ILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$sendDeliverReport$5(ILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cLwbZjaUDiFOodtnrx5j5WY0_CQ(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$handleMTReceivingDeliverReportAck$2(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$racOlliYfO6aP0LHR3AhowXJ_Yk(IILjava/lang/String;[BILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$broadcastOnReceiveSMSAck$7(IILjava/lang/String;[BILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sFkjnaUCNc_xOZYnJshp7mdM-gE(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$sendDeliverReport$6(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMAX_RETRANS_COUNT(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMAX_RETRANS_COUNT_SPR(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT_SPR:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxPhoneCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessagingAppInfoReceiver(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputMAX_RETRANS_COUNT(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStorageAvailable(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misRegistered(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monReceiveSMSAckInternal(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretryToSendMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->retryToSendMessage(ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;)V
    .locals 4

    .line 283
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    const/4 p1, 0x3

    .line 106
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    const/4 p1, 0x2

    .line 107
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT_SPR:I

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    const/4 v1, 0x0

    .line 137
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    .line 138
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 139
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    .line 141
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 142
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 143
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    .line 150
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    .line 216
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 224
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 284
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    .line 285
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    .line 286
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    .line 289
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    .line 290
    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    .line 291
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    move v0, v1

    .line 292
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aput-boolean v1, v2, v0

    .line 294
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aput-boolean v1, v2, v0

    .line 295
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 297
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aput-boolean v1, v2, v0

    .line 298
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    .line 301
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    .line 302
    const-string/jumbo p3, "phone"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 303
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    const-string p3, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string p3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    const-string p3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string p3, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 308
    const-string p3, "android.intent.action.PHONE_STATE"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 309
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V
    .locals 8

    monitor-enter p0

    .line 1763
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastOnReceiveSMSAck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda3;

    move-object v1, v7

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda3;-><init>(IILjava/lang/String;[BI)V

    invoke-virtual {v0, p1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1782
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private failPendingEmergencySms(I)V
    .locals 9

    .line 1232
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failPendingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1234
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1235
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1236
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1237
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    .line 1238
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/16 v5, 0x2712

    move-object v2, p0

    move v3, p1

    .line 1237
    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fallbackForSpecificReason(I)V
    .locals 10

    .line 1709
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1710
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1712
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1713
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_0

    .line 1715
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-nez v2, :cond_1

    return-void

    .line 1720
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1721
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1722
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback 3gpp message with reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1725
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1728
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    .line 1729
    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1730
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1733
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1736
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    :goto_1
    move v4, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1738
    :goto_2
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v6

    .line 1739
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v8

    .line 1740
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v9

    move-object v3, p0

    .line 1738
    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    goto/16 :goto_0

    .line 1744
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    const-string v1, "application/vnd.3gpp2.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1745
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v0, -0x1

    if-eq v3, v0, :cond_6

    .line 1747
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1750
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fallback 3gpp2 message with reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v2, 0x0

    const/16 v4, 0x320

    .line 1751
    const-string v5, "application/vnd.3gpp2.sms"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    :cond_6
    return-void
.end method

.method private handleEmergencyRegisterDone(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 4

    .line 1243
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEmergencyRegisterDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v1

    .line 1245
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    .line 1246
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v3, 0x1

    .line 1247
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1248
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    const/4 v0, 0x0

    aput-boolean v0, p1, v1

    .line 1249
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySms(I)V

    goto :goto_0

    .line 1251
    :cond_0
    const-string v1, "handleEmergencyRegisterDone: Emergency Regi failed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleEmergencyRegisterFail(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 2

    .line 1258
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEmergencyRegisterFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result p1

    .line 1260
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1261
    aput-boolean v1, v0, p1

    .line 1262
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->failPendingEmergencySms(I)V

    :cond_0
    return-void
.end method

.method private handleEmergencySmsWithGeolocation(I[BLjava/lang/String;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 4

    .line 1851
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEmergencySmsWithGeolocation: mEmergencyGeolocationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 1855
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1857
    const-string v3, "handleEmergencySmsWithGeolocation: Start geolocation update for emergency SMS"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1859
    const-string p0, "handleEmergencySmsWithGeolocation: Geolocation update request failed. Send SMS without geolocation update"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    .line 1863
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 1864
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1865
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLocationAcquireFailSMS()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1868
    :cond_2
    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 1869
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1870
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1871
    invoke-virtual {p5, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 1872
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private handleMOReceivingCallID(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p5

    .line 1115
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    const/16 v5, 0x64

    const/4 v8, 0x1

    if-ne v4, v5, :cond_0

    return v8

    .line 1119
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    const/16 v5, 0xc8

    const/4 v6, 0x0

    const/16 v7, 0x12c

    if-lt v4, v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    if-ge v4, v7, :cond_6

    const/16 v3, 0x66

    .line 1120
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1121
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1122
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "ril.ims.smstest.ignoreack"

    const-string v4, "false"

    .line 1123
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v6, v8

    .line 1124
    :cond_2
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_5

    iget-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v3, :cond_5

    if-nez v6, :cond_5

    .line 1126
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v3

    if-eqz v3, :cond_3

    const-wide/16 v3, 0x4e20

    goto :goto_0

    .line 1128
    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide/16 v3, 0x2710

    goto :goto_0

    :cond_4
    const-wide/32 v3, 0x9c40

    .line 1131
    :goto_0
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1134
    :cond_5
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    .line 1137
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    if-lt v4, v7, :cond_b

    if-eqz v3, :cond_b

    .line 1138
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v17

    const-string v11, "1"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v10, p4

    invoke-static/range {v9 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 1140
    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v5, "initial-registration"

    const-string/jumbo v6, "restoration"

    const-string v7, "application/3gpp-ims+xml"

    const/16 v9, 0x1f8

    if-ne v0, v4, :cond_8

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    if-ne v0, v9, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1143
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;

    move-result-object v0

    .line 1144
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_a

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1148
    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceiveSipResponse: XPath expression failed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1150
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v4, 0x198

    if-ne v0, v4, :cond_a

    goto :goto_1

    .line 1153
    :cond_8
    sget-object v4, Lcom/sec/internal/constants/Mno;->EDF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v4, :cond_9

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_a

    .line 1154
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    if-ne v0, v9, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1156
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;

    move-result-object v0

    .line 1157
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_a

    .line 1166
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const-string v4, "initial_registration"

    invoke-static {v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    goto :goto_3

    .line 1168
    :catch_1
    :cond_a
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    .line 1170
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "onReceiveSipResponse"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    .line 1172
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v7

    move-object/from16 v1, p0

    move/from16 v2, p4

    move v3, v0

    .line 1171
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return v8

    :cond_b
    return v6
.end method

.method private handleMTReceivingDeliverReportAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;I)V
    .locals 4

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1182
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    if-eqz p3, :cond_2

    .line 1183
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v0

    if-lez v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1186
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1190
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    .line 1193
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "onReceiveSipResponse"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda5;

    invoke-direct {p4, p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    invoke-virtual {p0, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method private handleRRCConnection(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;)V
    .locals 3

    .line 537
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rrcEvent.getEvent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 540
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    return-void

    .line 544
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-ne p1, v0, :cond_3

    .line 545
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x320

    .line 548
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->fallbackForSpecificReason(I)V

    :cond_3
    return-void
.end method

.method private handleSmsEvent(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 3

    .line 522
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmsEvent coming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 531
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 525
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveNotiInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 528
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveOtherInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    :goto_0
    return-void
.end method

.method private isEmergencyNumber(Ljava/lang/String;)Z
    .locals 0

    .line 1543
    const-string p0, "911"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "9339"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "922"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isNTN(I)Z
    .locals 2

    .line 1893
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1895
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    .line 1896
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1897
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 1899
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1900
    throw p0
.end method

.method private isRegistered(I)Z
    .locals 0

    .line 1654
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$broadcastOnReceiveSMSAck$7(IILjava/lang/String;[BILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 7

    .line 1766
    :try_start_0
    invoke-virtual {p6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p5, :cond_0

    add-int/lit8 p5, p5, -0x1

    .line 1770
    :try_start_1
    invoke-virtual {p6, p5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/ims/sms/ISmsServiceEventListener;

    move v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSAck(IILjava/lang/String;[BI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1772
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1778
    :cond_0
    :goto_1
    invoke-virtual {p6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 1776
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    return-object p6

    .line 1778
    :goto_4
    invoke-virtual {p6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1779
    throw p0
.end method

.method private static synthetic lambda$deRegisterForSMSStateChange$4(Lcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 1284
    invoke-virtual {p2, p0}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-object p2
.end method

.method private static synthetic lambda$handleMTReceivingDeliverReportAck$2(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 4

    .line 1196
    :try_start_0
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    .line 1200
    :try_start_1
    invoke-virtual {p3, p2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    .line 1201
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v3

    .line 1200
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSDeliveryReportAck(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1203
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1209
    :cond_0
    :goto_1
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 1207
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    return-object p3

    .line 1209
    :goto_4
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1210
    throw p0
.end method

.method private static synthetic lambda$onReceive3GPP2IncomingSms$1(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 4

    .line 752
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 756
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveIncomingSMS(ILjava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 758
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 764
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 762
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    return-object p2

    .line 764
    :goto_4
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 765
    throw p0
.end method

.method private static synthetic lambda$onReceive3GPPIncomingSms$0(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 4

    .line 707
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 711
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    .line 712
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    .line 711
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveIncomingSMS(ILjava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 714
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 720
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 718
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    return-object p2

    .line 720
    :goto_4
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 721
    throw p0
.end method

.method private static synthetic lambda$registerForSMSStateChange$3(ILcom/sec/ims/sms/ISmsServiceEventListener;Ljava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 1

    if-nez p3, :cond_0

    .line 1271
    new-instance p3, Landroid/os/RemoteCallbackList;

    invoke-direct {p3}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1274
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "registerForSMSStateChange register"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    invoke-virtual {p3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-object p3
.end method

.method private static synthetic lambda$sendDeliverReport$5(ILjava/lang/Integer;Landroid/os/RemoteCallbackList;)Landroid/os/RemoteCallbackList;
    .locals 3

    .line 1592
    :try_start_0
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1596
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    const/16 v1, 0x3e7

    const/4 v2, -0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSDeliveryReportAck(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 1598
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1604
    :cond_0
    :goto_1
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    .line 1602
    :goto_2
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :goto_3
    return-object p2

    .line 1604
    :goto_4
    invoke-virtual {p2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1605
    throw p0
.end method

.method private synthetic lambda$sendDeliverReport$6(II)V
    .locals 1

    .line 1590
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda6;

    invoke-direct {v0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda6;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method private make3gpp2SMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p4

    move/from16 v3, p6

    const/4 v8, 0x0

    .line 1488
    :try_start_0
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v5, p3

    move-object/from16 v6, p8

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :goto_1
    invoke-static {v6, v5, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    invoke-virtual/range {p1 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1497
    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_1

    move-object/from16 v0, p2

    array-length v0, v0

    const/16 v4, 0x100

    if-le v0, v4, :cond_1

    .line 1499
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v14

    const-string v11, "0"

    const-string v12, "SSM_sendSMSOverIMS_overSize"

    move/from16 v10, p5

    invoke-static/range {v9 .. v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v8

    .line 1503
    :cond_1
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1504
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    return-object v2

    :catch_0
    move-exception v0

    .line 1490
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1491
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v14

    const-string v11, "0"

    const-string v12, "SSM_sendSMSOverIMS_AddrErr"

    move/from16 v10, p5

    invoke-static/range {v9 .. v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v4, 0x2711

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v5, p7

    .line 1492
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-object v8
.end method

.method private make3gppSMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move/from16 v10, p6

    move-object/from16 v11, p8

    move/from16 v12, p9

    .line 1433
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIncreasedRPRef()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRpRef(I)V

    .line 1435
    invoke-static {v12, v2, v3, v9}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getScaForRpDa(Z[BLjava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v4

    .line 1436
    const-string v5, "noSCA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v13, 0x0

    if-eqz v5, :cond_0

    .line 1437
    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v19

    const-string v16, "0"

    const-string v17, "SSM_sendSMSOverIMS_emptySCA"

    move/from16 v15, p5

    invoke-static/range {v14 .. v19}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v3, 0x2711

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v4, p7

    .line 1438
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-object v13

    .line 1442
    :cond_0
    invoke-static {v4, v3, v9, v11}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getSca(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v5

    if-nez v12, :cond_2

    .line 1444
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 1445
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->removeSipPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {v2, v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppPduFromTpdu([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    goto :goto_1

    .line 1447
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRpSMMAPdu(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1450
    :goto_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v4, v5

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-object/from16 v8, p8

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getScaFromPsismscPSI(Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Landroid/telephony/TelephonyManager;ILcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v3

    .line 1451
    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v9, v4, :cond_3

    const-string v4, "noPSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1452
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v10

    const-string v7, "0"

    const-string v8, "SSM_sendSMSOverIMS_LguNoPSI"

    move/from16 v6, p5

    invoke-static/range {v5 .. v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-object v13

    .line 1456
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    const/4 v5, 0x1

    if-eq v9, v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1458
    :cond_4
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    .line 1461
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v9, v4, :cond_7

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v9, v4, :cond_7

    sget-object v4, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v9, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v5

    :goto_3
    invoke-static {v11, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    if-nez v12, :cond_8

    .line 1463
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1464
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPMRFromPdu([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    goto :goto_4

    .line 1466
    :cond_8
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1467
    invoke-virtual {v1, v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    .line 1470
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1471
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "send message already pending"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const/16 v2, 0x64

    .line 1473
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1475
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_a

    .line 1476
    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1478
    :cond_a
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object v1
.end method

.method private onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 7

    .line 727
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 733
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 734
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v6

    const-string v3, "1"

    const-string v4, "SSM_onReceive3GPP2IncomingSms_WrongFormat"

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 738
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->isValid3GPP2PDU([B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 740
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v6

    const-string v3, "1"

    const-string v4, "SSM_onReceive3GPP2IncomingSms_InvalidPdu"

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 746
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive3GPP2IncomingSms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive3GPP2IncomingSms"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x50000004

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeMtSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;IZ)V

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method private onReceive3GPP2SmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 13

    .line 1016
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v9

    const/16 v0, 0x64

    const/4 v10, 0x1

    if-ne v9, v0, :cond_0

    return v10

    .line 1023
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1026
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    :goto_0
    move v11, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1028
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    :cond_2
    move v12, v0

    .line 1029
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v8

    const-string v2, "1"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, v11

    move v3, v9

    invoke-static/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive3GPP2SmsAck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v6

    move-object v0, p0

    move v1, v11

    move v2, v12

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return v10
.end method

.method private onReceive3GPPIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 18

    move-object/from16 v0, p0

    .line 629
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 635
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 640
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v4

    if-nez v4, :cond_4

    .line 642
    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "incoming tpdu is null. send RP Error report"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] SmscAddr ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v9

    const-string v6, "1"

    const-string v7, "SSM_onReceive3GPPIncomingSms_tPduNull"

    move v5, v3

    invoke-static/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 645
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->trimSipAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->makeRPErrorPdu([B)[B

    move-result-object v9

    if-nez v9, :cond_2

    .line 649
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v9

    const-string v6, "1"

    const-string v7, "SSM_onReceive3GPPIncomingSms_deliverPduNull"

    move v5, v3

    invoke-static/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 652
    :cond_2
    const-string v3, "application/vnd.3gpp.sms"

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 653
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v7

    .line 654
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    :cond_3
    move v13, v2

    const-wide/16 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v17

    .line 653
    const-string v8, "application/vnd.3gpp.sms"

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v5 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZJZ)V

    return-void

    .line 658
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    array-length v1, v1

    const/4 v5, 0x1

    if-gt v1, v5, :cond_5

    .line 659
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v9

    const-string v6, "1"

    const-string v7, "SSM_onReceive3GPPIncomingSms_DataError"

    move v5, v3

    invoke-static/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void

    .line 663
    :cond_5
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 664
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    aget-byte v6, v6, v5

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRpRef(I)V

    .line 666
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->removeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->trimSipAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setNTN(Z)V

    .line 672
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 673
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isStatusReport([B)Z

    move-result v6

    const-wide/32 v7, 0x2bf20

    if-ne v6, v5, :cond_6

    .line 675
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    const/16 v2, 0x68

    .line 676
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 678
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 679
    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 683
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    const/16 v6, 0x67

    .line 684
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 686
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPPidDcsFromPdu([B)[B

    move-result-object v4

    if-eqz v4, :cond_7

    .line 688
    aget-byte v2, v4, v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpPid(I)V

    .line 689
    aget-byte v2, v4, v5

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpDcs(I)V

    .line 690
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Incoming SMS new setMessageID : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " TpPid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " TpDcs : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpDcs()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 690
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_7
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 695
    invoke-virtual {v2, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 698
    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_9
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive3GPPIncomingSms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "onReceive3GPPIncomingSms"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x50000003

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 704
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeMtSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;IZ)V

    .line 705
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void

    .line 636
    :cond_a
    :goto_2
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v9

    const-string v6, "1"

    const-string v7, "SSM_onReceive3GPPIncomingSms_WrongFormat"

    move v5, v3

    invoke-static/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onReceive3GPPSmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 14

    .line 942
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 943
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "true"

    .line 944
    const-string/jumbo v1, "ril.ims.smstest.ignoreack"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Ignore ack for test"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 951
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 954
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 957
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_a

    .line 962
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_3

    .line 963
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I

    move-result v3

    .line 964
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    :goto_1
    move-object v12, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const/4 v3, -0x1

    goto :goto_1

    :goto_2
    if-nez v12, :cond_4

    .line 968
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unexpected SUBMIT report - pendingMessage is null"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 972
    :cond_4
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_9

    const/16 v5, 0x66

    if-le v4, v5, :cond_5

    goto/16 :goto_4

    .line 979
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 980
    invoke-virtual {v3, v2, v12}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 981
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v3, :cond_6

    .line 982
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v12}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 986
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 987
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 988
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 990
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppRPError(Ljava/lang/String;[B)I

    move-result v13

    if-lez v13, :cond_7

    .line 992
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    int-to-byte v4, v13

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v9

    .line 993
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v11

    .line 992
    const-string v5, "2"

    const/4 v6, 0x0

    const/4 v8, 0x1

    move v4, v0

    invoke-static/range {v3 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 994
    invoke-static {v13}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRilRPErrCode(I)I

    move-result v3

    invoke-virtual {v12, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    goto :goto_3

    .line 996
    :cond_7
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v9

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v11

    const-string v5, "0"

    const/4 v6, 0x0

    const-string v7, "00"

    const/4 v8, 0x1

    move v4, v0

    invoke-static/range {v3 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 997
    invoke-virtual {v12, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1000
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive3GPPSmsAck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v5, 0x50000005

    invoke-static {v5, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1002
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAck(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "onReceive3GPPSmsAck"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v5

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v6

    .line 1005
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v8

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v9

    move-object v3, p0

    move v4, v0

    .line 1004
    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return v2

    .line 1008
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p0

    if-nez p0, :cond_a

    .line 1009
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    goto :goto_5

    .line 974
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected SUBMIT report - pendingState is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_5
    return v1
.end method

.method private onReceive3GPPSmsRpError(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;I)Z
    .locals 11

    .line 898
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 904
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 908
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 909
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I

    move-result p1

    .line 910
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 914
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "unexpected RP-ERROR"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 918
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    int-to-byte p2, p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v3, "%02X"

    invoke-static {v3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v8

    .line 919
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v10

    .line 918
    const-string v4, "2"

    const/4 v5, 0x0

    const/4 v7, 0x1

    move v3, v0

    invoke-static/range {v2 .. v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 920
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive3GPPSmsRpError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x50000006

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 922
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 923
    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 924
    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz p2, :cond_3

    .line 925
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {p2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 929
    :cond_3
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    if-ge p2, v0, :cond_5

    .line 930
    const-string/jumbo p2, "retry to send message on RP-ERROR"

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    const/4 v1, 0x3

    .line 932
    invoke-virtual {p2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 934
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_5
    return v1
.end method

.method private onReceiveAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;I)V
    .locals 18

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    const/4 v8, -0x1

    if-nez p5, :cond_0

    .line 771
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v3

    const/16 v4, 0x198

    if-ne v3, v4, :cond_0

    .line 772
    iput v8, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 773
    iget-object v9, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v17

    const-string v11, "3"

    const/16 v12, 0x198

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v10, p3

    invoke-static/range {v9 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    return-void

    .line 780
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v3

    .line 783
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    .line 786
    iget-object v1, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I

    move-result v1

    if-le v1, v8, :cond_1

    .line 788
    iget-object v3, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v8

    .line 791
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSipResponse(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v3

    goto :goto_3

    .line 792
    :cond_2
    const-string v3, "application/vnd.3gpp.sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 793
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 794
    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_3

    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isRPErrorForRetransmission(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 795
    invoke-direct {v7, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPSmsRpError(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;I)Z

    move-result v1

    :goto_1
    move v3, v1

    goto :goto_2

    .line 798
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPSmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v1

    goto :goto_1

    :goto_2
    move v1, v8

    goto :goto_3

    .line 800
    :cond_4
    const-string v3, "application/vnd.3gpp2.sms"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 801
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2SmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v3

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    :goto_3
    if-nez v3, :cond_8

    if-lez v2, :cond_6

    .line 807
    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRilRPErrCode(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 808
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 810
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "onReceiveAck"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v8, :cond_7

    :goto_4
    move v2, v1

    goto :goto_5

    .line 811
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v1

    goto :goto_4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    .line 812
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, p3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v9

    .line 811
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 813
    iput v8, v7, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    :cond_8
    return-void
.end method

.method private onReceiveIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 575
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v3, "application/vnd.3gpp.sms"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_4

    if-eqz p5, :cond_4

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p5, v0}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceiveIncomingSms: isLimitedRegi = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    .line 580
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aget-boolean v1, v1, p3

    if-eqz v1, :cond_3

    .line 582
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 583
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v1

    .line 584
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->is911FromPdu([B)Z

    move-result v1

    if-eqz v1, :cond_1

    move v5, v4

    .line 589
    :cond_1
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p5

    if-nez p5, :cond_2

    if-eqz v5, :cond_3

    .line 590
    :cond_2
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 591
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p5

    .line 592
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v5, 0x493e0

    .line 591
    invoke-virtual {p5, v1, v5, v6}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    :cond_3
    move v5, v0

    .line 598
    :cond_4
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isNTN(I)Z

    move-result p4

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setNTN(Z)V

    .line 599
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/16 p5, 0x194

    if-eqz p4, :cond_6

    if-eqz v5, :cond_5

    .line 600
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_5

    .line 601
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object p2

    .line 602
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAdminMsg([B)Z

    move-result p2

    if-nez p2, :cond_5

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1, p5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    return-void

    .line 607
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_1

    .line 608
    :cond_6
    const-string p4, "application/vnd.3gpp2.sms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-ne v5, v4, :cond_7

    .line 609
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_7

    .line 610
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->isAdminMsg([B)Z

    move-result p2

    if-nez p2, :cond_7

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1, p5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    return-void

    .line 615
    :cond_7
    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    if-nez p2, :cond_8

    .line 616
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object p4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p5, "incoming sms but mStorageAvailable = false"

    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p4

    const/16 p5, 0x1e0

    invoke-interface {p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    .line 618
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void

    .line 621
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_1

    .line 623
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v5

    const-string v2, "1"

    const-string v3, "SSM_onReceiveIncomingSms_noContentType"

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 625
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-interface {p0, p3, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    return-void
.end method

.method private onReceiveNotiInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 4

    .line 1036
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-eqz v1, :cond_3

    .line 1045
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    const/16 v3, 0x69

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x6a

    .line 1053
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1054
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 1055
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/16 v2, 0x65

    .line 1047
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1048
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 1049
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 1063
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no pending message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onReceiveOtherInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 15

    move-object v0, p0

    .line 1067
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    .line 1068
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-gez v1, :cond_0

    return-void

    .line 1075
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v2

    const/16 v3, 0x3e7

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 1077
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "cannot send message as NOTI_DEREGISTERED"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1082
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    .line 1086
    :goto_0
    const-string v6, "application/vnd.3gpp.sms"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1087
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-nez v6, :cond_3

    .line 1089
    const-string v0, "no pending message"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1092
    :cond_3
    const-string/jumbo v7, "remove pending message"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    const/4 v3, -0x1

    .line 1094
    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1095
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1096
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v1

    :goto_1
    move v3, v1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 1099
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v7

    .line 1100
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v1

    if-eqz v6, :cond_5

    .line 1102
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v7

    .line 1103
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v1

    :cond_5
    move v14, v1

    move-wide v12, v7

    .line 1105
    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "1"

    const/16 v9, 0x3e7

    move v7, v5

    invoke-static/range {v6 .. v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onReceiveOtherInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0x3e7

    move-object v0, p0

    move v1, v5

    move v2, v3

    move v3, v8

    move-object v5, v6

    move v6, v7

    .line 1107
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    :goto_3
    return-void
.end method

.method private onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V
    .locals 3

    .line 1757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveSMSAckInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void
.end method

.method private onReceiveSipResponse(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 818
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v1

    .line 823
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v8

    .line 824
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getPhoneId()I

    move-result v2

    if-eqz v8, :cond_0

    .line 826
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    :cond_0
    move v4, v2

    .line 829
    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 830
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v2

    const/16 v3, 0x2c4

    if-ne v2, v3, :cond_1

    const/16 v2, 0x198

    .line 832
    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 834
    :cond_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceiveSipResponse: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v6, 0x50000007    # 8.589942E9f

    invoke-static {v6, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 837
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const/16 v18, 0x1

    const/4 v6, 0x0

    if-ltz v1, :cond_5

    .line 841
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 843
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v1

    const/16 v3, 0x65

    if-eq v1, v3, :cond_4

    const/16 v3, 0x6a

    if-eq v1, v3, :cond_3

    return v6

    .line 848
    :cond_3
    invoke-direct {v0, v7, v2, v8, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleMTReceivingDeliverReportAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;I)V

    return v18

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v8

    .line 845
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleMOReceivingCallID(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z

    move-result v0

    return v0

    .line 857
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    if-nez v1, :cond_8

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onReceiveSipResponse"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    .line 878
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v3

    .line 879
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v17

    const-string v11, "1"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move v10, v4

    move v12, v1

    invoke-static/range {v9 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 880
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_6

    const/16 v5, 0x1f7

    if-ne v1, v5, :cond_6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Outage"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v1, 0x309

    :cond_6
    move v3, v1

    .line 884
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    if-gez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    :cond_7
    move v5, v1

    .line 885
    iput v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 886
    const-string v10, "application/vnd.3gpp2.sms"

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object v4, v10

    move-object v5, v6

    move v6, v9

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_9

    if-eqz v8, :cond_9

    .line 891
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    move/from16 v18, v6

    :cond_9
    :goto_1
    return v18
.end method

.method private onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 8

    .line 553
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppRPError(Ljava/lang/String;[B)I

    move-result v6

    .line 555
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 556
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getPhoneId()I

    move-result v0

    if-eqz v5, :cond_0

    .line 559
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 560
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    :goto_0
    move v3, v0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 563
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceiveSmsMessage: errorCode="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v6, :cond_1

    .line 564
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAck(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    .line 565
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;)V

    goto :goto_2

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 567
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;I)V

    :goto_2
    return-void
.end method

.method private retryToSendMessage(ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1680
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "retry to send message"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_0

    const/16 v2, 0x3e7

    .line 1682
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1683
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1684
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void

    .line 1687
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v9

    if-nez v9, :cond_1

    const/16 v3, 0x2711

    .line 1689
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1690
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1691
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    .line 1692
    const-string v0, "Aborting, reason: null pdu obtained via SmsEvent.getData() call"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1695
    :cond_1
    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->set3gppTPRD([B)V

    .line 1696
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v7

    .line 1698
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v12

    .line 1699
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    :goto_0
    move v13, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v17

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1697
    invoke-interface/range {v5 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZJZ)V

    const/16 v2, 0x64

    .line 1700
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1701
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1702
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1704
    :cond_3
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1705
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    return-void
.end method

.method private sendPendingEmergencySms(I)V
    .locals 3

    .line 1216
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPendingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1218
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    .line 1220
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendPendingEmergencySmsWithGeolocation()V
    .locals 3

    .line 1225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPendingEmergencySmsWithGeolocation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private vzwSendSmsDestAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1547
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    const-string p0, "0111"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isNanp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1550
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "6.5.2b is applied"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 1551
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private vzwSendSmsE911(Ljava/lang/String;II[BLcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;)I
    .locals 3

    .line 1520
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 1521
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSMSOverIMS: isVzwE911 = true, mEmergencyRegiProcessiong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    .line 1523
    const-string/jumbo p0, "sendSMSOverIMS: regInfo = eRegInfo"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1526
    :cond_0
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 1527
    invoke-virtual {p5, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1528
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1529
    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 1530
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1531
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean p3, p1, p2

    if-nez p3, :cond_1

    .line 1532
    aput-boolean v1, p1, p2

    const/4 p1, 0x4

    .line 1533
    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x6

    .line 1534
    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x2710

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method private vzwSendSmsLimitedRegi(IIILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Z
    .locals 7

    .line 1510
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 1511
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5, p1}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1512
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p5, "Limited Regi Mode, fallback to 1xRTT"

    invoke-static {p1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v3, 0x2714

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v4, p4

    .line 1513
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 3

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterForSMSStateChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/ims/sms/ISmsServiceEventListener;)V

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public dump()V
    .locals 5

    .line 1911
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1914
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIncommingMagId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIncommingMagId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1915
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRPMsgRef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getRPMsgRef()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m3GPP2SendingMsgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastMOContentType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetransCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    const-string v1, "mPendingQueue :"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1923
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1924
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1927
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->dump()V

    .line 1929
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1930
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 314
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPendingQueue()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation

    .line 1846
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 319
    const-string/jumbo p0, "smsip"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmsFallback(I)Z
    .locals 3

    .line 1648
    const-string p0, "enable_default_sms_fallback"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    .line 1649
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsFallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public handleEventDefaultAppChanged()V
    .locals 4

    .line 1291
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEventDefaultAppChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1292
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1293
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1294
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 1295
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : MessageApplication is changed. MsgApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v3, v3, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v3, v3, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v2, v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 441
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 444
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 505
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    if-ne p1, v0, :cond_0

    .line 506
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATED:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    const/16 p1, 0x9

    .line 507
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 509
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySmsWithGeolocation()V

    .line 511
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    if-nez p1, :cond_2

    .line 512
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 513
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 490
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 491
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->TIMEOUT:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 492
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->updateGeolocationFromLastKnown(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 495
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySmsWithGeolocation()V

    .line 497
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    if-nez p1, :cond_2

    .line 498
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 499
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 485
    :pswitch_2
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 486
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    goto/16 :goto_0

    .line 476
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aput-boolean v5, v1, v0

    .line 478
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 479
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v5, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 472
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencyRegisterFail(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 468
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencyRegisterDone(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 462
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 463
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x5

    .line 464
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 463
    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->startEmergencyRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 457
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 458
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 452
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 453
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleRRCConnection(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;)V

    goto :goto_0

    .line 447
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 448
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleSmsEvent(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
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

.method public init()V
    .locals 3

    .line 326
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 327
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 332
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 335
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method public isSmsOverIpEnabled(I)Z
    .locals 5

    .line 1785
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1787
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "regInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1788
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 1792
    :cond_0
    const-string/jumbo v1, "smsip"

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1793
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    .line 1794
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1796
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getDisallowReregi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1797
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isServiceAvailable(Landroid/telephony/TelephonyManager;IZ)Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    .line 1800
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v4

    :cond_4
    return v2

    .line 1789
    :cond_5
    :goto_1
    const-string p0, "disallow sms Service"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isVolteSupported(I)Z
    .locals 3

    .line 1812
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1814
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsVolteSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mmtel"

    invoke-virtual {p0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    invoke-virtual {p0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigured(I)V
    .locals 2

    .line 401
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConfigured:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p0, p1

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 3

    .line 423
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deregistered from SMS service. reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 425
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 427
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 428
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 429
    sget-object v1, Lcom/sec/internal/constants/Mno;->BSNL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    .line 430
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->fallbackForSpecificReason(I)V

    .line 432
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 1562
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 1564
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method public onMessagingAppPackageReplaced()V
    .locals 1

    .line 1664
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 412
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 413
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 414
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 415
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered to SMS service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 418
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    return-void
.end method

.method public onSimReady(I)V
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastDcnNumber(Landroid/content/Context;I)V

    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1885
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1886
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateGeolocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 1887
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 4

    .line 1827
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1828
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isSmsOverIpEnabled(I)Z

    move-result p0

    const/16 v1, 0x8

    const-string v2, "Sms Service queryCapabilityStatus["

    if-eqz p0, :cond_0

    .line 1829
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: addCapabilities CAPABILITY_TYPE_SMS"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    goto :goto_0

    .line 1832
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: removeCapabilities CAPABILITY_TYPE_SMS"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1833
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    :goto_0
    return-object v0
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 3

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForSMSStateChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda4;-><init>(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public sendDeliverReport(I[B)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_9

    .line 1569
    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v3, 0x2

    .line 1574
    aget-byte v4, v2, v3

    and-int/lit16 v12, v4, 0xff

    .line 1575
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-eqz v4, :cond_8

    .line 1577
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    .line 1578
    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1585
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1586
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_2

    goto/16 :goto_2

    .line 1611
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    .line 1616
    :cond_3
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpPid()I

    move-result v7

    .line 1617
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpDcs()I

    move-result v8

    and-int/lit8 v9, v7, 0x3f

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_4

    and-int/lit8 v9, v8, 0x2

    if-ne v9, v3, :cond_4

    .line 1622
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "sendDeliverReport() set TP-PID and TP-DCS"

    invoke-static {v3, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1626
    :cond_4
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "sendDeliverReport() do not set TP-PID and TP-DCS"

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    move v8, v7

    .line 1629
    :goto_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    invoke-static {v1, v3, v2, v7, v8}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getDeliverReportFromPdu(II[BII)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    const/16 v2, 0x69

    .line 1630
    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1631
    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1632
    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setLocalUri(Ljava/lang/String;)V

    .line 1634
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_5

    .line 1635
    invoke-virtual {v2, v6, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v5, 0x2bf20

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1637
    :cond_5
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1639
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDeliverReport: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x50000002    # 8.589937E9f

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1641
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v8

    .line 1642
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v13

    const-wide/16 v15, 0x0

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v17

    const/4 v10, 0x0

    const/4 v14, 0x0

    .line 1641
    invoke-interface/range {v5 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZJZ)V

    .line 1643
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    return-void

    .line 1612
    :cond_6
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDeliverReport wrong format"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1587
    :cond_7
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendDeliverReport() called. but not registered IMS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDeliverReport: msgId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    new-instance v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1581
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendDeliverReport no incoming Message to send DeliverReport!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 34

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v7, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 1305
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v8

    const/4 v14, 0x1

    .line 1306
    invoke-virtual {v10, v11, v14}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    .line 1308
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v15

    .line 1311
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    const-string v1, " destAddr="

    const-string/jumbo v6, "sendSMSOverIMS: "

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 1312
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1314
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v16, 0x0

    if-eqz v8, :cond_1

    .line 1319
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v0

    .line 1320
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    move-object/from16 v33, v2

    move v2, v0

    move-object/from16 v0, v33

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    move v2, v0

    move-object/from16 v0, v16

    .line 1323
    :goto_1
    new-instance v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 1324
    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 1325
    invoke-direct {v10, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEmergency(Z)V

    .line 1326
    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    move-object/from16 v17, v6

    .line 1327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSentTime(J)V

    .line 1328
    invoke-direct {v10, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isNTN(I)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setNTN(Z)V

    .line 1330
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v15, v3, :cond_5

    move-object/from16 v0, p0

    move v1, v2

    move/from16 v2, p1

    move/from16 v3, p5

    move-object v6, v4

    move-object/from16 v4, p4

    move-object v5, v8

    .line 1331
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsLimitedRegi(IIILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object v5, v6

    move-object/from16 v18, v17

    move-object/from16 v17, v6

    move-object v6, v9

    .line 1334
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsE911(Ljava/lang/String;II[BLcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;)I

    move-result v5

    if-ne v5, v14, :cond_3

    move-object v8, v9

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    return-void

    .line 1340
    :cond_4
    :goto_2
    invoke-direct {v10, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsDestAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v7, v8

    move v8, v5

    goto :goto_3

    :cond_5
    move-object/from16 v18, v17

    move-object/from16 v17, v4

    if-eqz v0, :cond_6

    const/16 v2, 0x40

    .line 1341
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->isNeedPidfSipMsg(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1342
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSMSOverIMS: add geolocation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, v17

    .line 1343
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencySmsWithGeolocation(I[BLjava/lang/String;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    move-object v9, v7

    move-object v7, v8

    const/4 v8, 0x0

    .line 1349
    :goto_3
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isProhibited(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v7, :cond_8

    :cond_7
    move-object/from16 v6, v17

    move-object/from16 v17, v7

    goto/16 :goto_7

    :cond_8
    move-object/from16 v6, v17

    .line 1368
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    if-eqz v9, :cond_a

    .line 1370
    const-string v0, "application/vnd.3gpp.sms"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v15

    move/from16 v5, p1

    move/from16 v6, p5

    move-object/from16 v17, v7

    move-object/from16 v7, p4

    move/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 p3, v9

    move/from16 v9, p6

    .line 1371
    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->make3gppSMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object v4

    :goto_4
    move-object v9, v4

    goto :goto_5

    :cond_9
    move-object/from16 v17, v7

    move/from16 v19, v8

    move-object/from16 p3, v9

    .line 1372
    const-string v0, "application/vnd.3gpp2.sms"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v15

    move/from16 v5, p1

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, v17

    .line 1373
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->make3gpp2SMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object v4

    goto :goto_4

    :cond_a
    move-object/from16 v17, v7

    move/from16 v19, v8

    move-object/from16 p3, v9

    :cond_b
    move-object v9, v6

    :goto_5
    if-nez v9, :cond_c

    return-void

    .line 1379
    :cond_c
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-nez v0, :cond_d

    .line 1380
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMessage.getData() is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v5

    const-string v2, "0"

    const-string v3, "SSM_sendSMSOverIMS_emptyPdu"

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v3, 0x2715

    move-object/from16 v0, p0

    move/from16 v2, p5

    move-object/from16 v4, p4

    .line 1382
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void

    .line 1386
    :cond_d
    invoke-virtual/range {v17 .. v17}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-nez v0, :cond_e

    .line 1388
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "1"

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p1

    invoke-static/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 1389
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v5

    const-string v2, "0"

    const-string v3, "SSM_sendSMSOverIMS_notRegi"

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    .line 1390
    iput v13, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/16 v3, 0x3e7

    move-object/from16 v0, p0

    move/from16 v2, p5

    move-object/from16 v4, p4

    .line 1391
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void

    .line 1394
    :cond_e
    invoke-static/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setLocalUri(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1397
    iput v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    .line 1398
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 1399
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    const-string v0, ""

    if-eqz v15, :cond_f

    .line 1402
    invoke-virtual {v15}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 1403
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Country Code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    move-object v2, v0

    .line 1405
    :goto_6
    iget-object v3, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "922"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1406
    :cond_10
    const-string v2, "Send EMERGENCY_SMS_OVER_IMS intent for GPS"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1408
    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_11
    if-eqz v7, :cond_12

    .line 1413
    const-string v1, "(?<=.{2}).(?=.{2})"

    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1415
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x50000001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1416
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v23

    .line 1417
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v24

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v28

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v29

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v30

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v32

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v20, v0

    .line 1416
    invoke-interface/range {v20 .. v32}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZJZ)V

    move/from16 v5, v19

    if-ne v5, v14, :cond_13

    .line 1420
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v10, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1421
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1422
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    .line 1421
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    .line 1423
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aget-boolean v1, v0, v11

    if-nez v1, :cond_13

    .line 1424
    aput-boolean v14, v0, v11

    .line 1425
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v14, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    :cond_13
    return-void

    .line 1352
    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1353
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v16

    :cond_14
    move-object/from16 v0, v16

    if-eqz v17, :cond_15

    .line 1354
    invoke-virtual/range {v17 .. v17}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v1, 0x309

    goto :goto_8

    :cond_15
    const/16 v1, 0x3e7

    .line 1357
    :goto_8
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_16

    const/16 v0, 0x2712

    move v9, v0

    goto :goto_9

    :cond_16
    move v9, v1

    .line 1360
    :goto_9
    iput v13, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1361
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSentTime()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v14

    const-string v2, "1"

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p1

    move-object v15, v6

    move-wide v6, v7

    move v8, v14

    invoke-static/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;ZJZ)V

    .line 1362
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v15}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isNTN()Z

    move-result v5

    const-string v2, "0"

    const-string v3, "SSM_sendSMSOverIMS_notRegi"

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ZZ)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p5

    move v3, v9

    move-object/from16 v4, p4

    .line 1364
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void
.end method

.method public sendSMSResponse(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public setDelayedDeregisterTimerRunning(IZ)V
    .locals 1

    .line 1841
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aput-boolean p2, v0, p1

    .line 1842
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0

    .line 1822
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method
