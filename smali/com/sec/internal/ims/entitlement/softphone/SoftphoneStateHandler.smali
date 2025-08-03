.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;
.super Lcom/sec/internal/ims/entitlement/softphone/VSimClient;
.source "SoftphoneStateHandler.java"


# instance fields
.field private final INTENT_FILTER_AKA_CHALLENGE:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_LOCATION_SERVICE:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_SHUTDOWN_SERVICE:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

.field private final INTENT_FILTER_SOFTPHONE_REGISTRATION:Landroid/content/IntentFilter;

.field public final LOG_TAG:Ljava/lang/String;

.field private final mAccountId:Ljava/lang/String;

.field protected final mActivatedState:Lcom/sec/internal/helper/State;

.field protected final mActivatingState:Lcom/sec/internal/helper/State;

.field private final mAirplaneState:Lcom/sec/internal/helper/State;

.field final mAkaEventReceiver:Landroid/content/BroadcastReceiver;

.field protected mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

.field mContext:Landroid/content/Context;

.field protected final mDeactivatingState:Lcom/sec/internal/helper/State;

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected final mInitialState:Lcom/sec/internal/helper/State;

.field protected final mReadyState:Lcom/sec/internal/helper/State;

.field private final mRefreshState:Lcom/sec/internal/helper/State;

.field protected final mRegisteredState:Lcom/sec/internal/helper/State;

.field protected final mReleasingState:Lcom/sec/internal/helper/State;

.field private final mReloginState:Lcom/sec/internal/helper/State;

.field protected final mServiceOutState:Lcom/sec/internal/helper/State;

.field mSoftphoneAlarmReceiver:Landroid/content/BroadcastReceiver;

.field final mSoftphoneRegistrationReceiver:Landroid/content/BroadcastReceiver;

.field final mSoftphoneShutdownReceiver:Landroid/content/BroadcastReceiver;

.field protected final mUserSwitchState:Lcom/sec/internal/helper/State;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccountId(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAirplaneState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAirplaneState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRefreshState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRefreshState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReloginState(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReloginState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V
    .locals 4

    .line 55
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;-><init>(Landroid/os/Looper;)V

    .line 87
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneRegistrationReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$3;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 129
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$4;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$4;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAkaEventReceiver:Landroid/content/BroadcastReceiver;

    .line 239
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$InitialState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$InitialState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mInitialState:Lcom/sec/internal/helper/State;

    .line 285
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatingState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatingState:Lcom/sec/internal/helper/State;

    .line 541
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReadyState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    .line 593
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ActivatedState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    .line 668
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RegisteredState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RegisteredState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 702
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$RefreshState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRefreshState:Lcom/sec/internal/helper/State;

    .line 753
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$AirplaneState-IA;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAirplaneState:Lcom/sec/internal/helper/State;

    .line 777
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ServiceOut;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ServiceOut;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mServiceOutState:Lcom/sec/internal/helper/State;

    .line 845
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReleasingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    .line 876
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$UserSwitchState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mUserSwitchState:Lcom/sec/internal/helper/State;

    .line 929
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$DeactivatingState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$DeactivatingState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDeactivatingState:Lcom/sec/internal/helper/State;

    .line 955
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReloginState;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$ReloginState;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReloginState:Lcom/sec/internal/helper/State;

    .line 56
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    .line 57
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    .line 58
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    .line 59
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->LOG_TAG:Ljava/lang/String;

    .line 60
    new-instance p4, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0xc8

    invoke-direct {p4, p2, p3, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 62
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_ALARM:Landroid/content/IntentFilter;

    .line 63
    const-string/jumbo p3, "refresh_token"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string/jumbo p3, "resend_sms"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string/jumbo p3, "refresh_identity"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mSoftphoneAlarmReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-virtual {p3, p4, p2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 68
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SOFTPHONE_REGISTRATION:Landroid/content/IntentFilter;

    .line 69
    const-string p3, "com.sec.ims.vsim.attsoftphone.action.TRY_REGISTER"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    const/4 p4, 0x2

    invoke-virtual {p3, p1, p2, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 72
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_LOCATION_SERVICE:Landroid/content/IntentFilter;

    .line 73
    const-string p2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_SHUTDOWN_SERVICE:Landroid/content/IntentFilter;

    .line 76
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->INTENT_FILTER_AKA_CHALLENGE:Landroid/content/IntentFilter;

    .line 81
    const-string p2, "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->initState()V

    return-void
.end method

.method private initState()V
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mInitialState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mActivatedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mRefreshState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAirplaneState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mServiceOutState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReadyState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 187
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mUserSwitchState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mDeactivatingState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReloginState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mReleasingState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mInitialState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "finalize()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 151
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAccountStatus()I
    .locals 9

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mAccountId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getUserId()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 159
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountStatus found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " records"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    const-string/jumbo v1, "status"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 163
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountStatus status: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1
.end method
