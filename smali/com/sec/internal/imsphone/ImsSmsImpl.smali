.class public final Lcom/sec/internal/imsphone/ImsSmsImpl;
.super Landroid/telephony/ims/stub/ImsSmsImplBase;
.source "ImsSmsImpl.java"


# static fields
.field private static final ACTION_TEST_PDU_IMS:Ljava/lang/String; = "com.sec.internal.google.ImsSmsImpl.PduTest"

.field private static final CDMA_NETWORK_TYPE:I = 0x1

.field private static final CONTENT_TYPE_3GPP:Ljava/lang/String; = "application/vnd.3gpp.sms"

.field private static final CONTENT_TYPE_3GPP2:Ljava/lang/String; = "application/vnd.3gpp2.sms"

.field private static final EVENT_SMS_DELIVER_REPORT_RETRY:I = 0x4

.field private static final EVENT_SMS_NO_RESPONSE_TIMEOUT:I = 0x2

.field private static final EVENT_SMS_RETRY:I = 0x1

.field private static final EVENT_SMS_SEND_DELAYED_MESSAGE:I = 0x3

.field private static final GSM_NETWORK_TYPE:I = 0x2

.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final LOG_TAG_HEAD:Ljava/lang/String; = "ImsSmsImpl"

.field private static final MAP_KEY_CONTENT_TYPE:Ljava/lang/String; = "contentType"

.field private static final MAP_KEY_DEST_ADDR:Ljava/lang/String; = "destAddr"

.field private static final MAP_KEY_MESSAGE_ID:Ljava/lang/String; = "messageId"

.field private static final MAP_KEY_PDU:Ljava/lang/String; = "pdu"

.field private static final MAP_KEY_RETRY_COUNT:Ljava/lang/String; = "retryCount"

.field private static final MAP_KEY_STATUS_REPORT:Ljava/lang/String; = "statusReport"

.field private static final MAP_KEY_TOKEN:Ljava/lang/String; = "token"

.field private static final MAX_SEND_RETRIES_1:I = 0x1

.field private static final MAX_SEND_RETRIES_2:I = 0x2

.field private static final MAX_SEND_RETRIES_4:I = 0x4

.field private static final PDU_TYPE_RECEIVED_CDMA_SMS:I = 0x1

.field private static final PDU_TYPE_RECEIVED_GSM_SMS:I = 0x0

.field private static final RIL_CODE_RP_ERROR:I = 0x8000

.field private static final RIL_CODE_RP_ERROR_END:I = 0x80ff

.field private static final RP_CAUSE_CONGESTION:I = 0x2a

.field private static final RP_CAUSE_DESTINATION_OUT_OF_ORDER:I = 0x1b

.field private static final RP_CAUSE_MEMORY_CAP_EXCEEDED:I = 0x16

.field private static final RP_CAUSE_NETWORK_OUT_OF_ORDER:I = 0x26

.field private static final RP_CAUSE_NONE_ERROR:I = 0x0

.field private static final RP_CAUSE_NOT_COMPATIBLE_PROTOCOL:I = 0x62

.field private static final RP_CAUSE_PROTOCOL_ERROR:I = 0x6f

.field private static final RP_CAUSE_REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field private static final RP_CAUSE_RESOURCES_UNAVAILABLE:I = 0x2f

.field private static final RP_CAUSE_SMS_TRANSFER_REJECTED:I = 0x15

.field private static final RP_CAUSE_TEMPORARY_FAILURE:I = 0x29

.field private static final RP_CAUSE_UNIDENTIFIED_SUBSCRIBER:I = 0x1c

.field private static final RP_CAUSE_UNKNOWN_SUBSCRIBER:I = 0x1e

.field private static final SEND_RETRY_DELAY:I = 0x7530

.field private static final TIMER_STATE:I = 0x1fbd0

.field private static final TIMER_STATE_FOR_O2C:I = 0x7530

.field private static final TP_CAUSE_INVALID_SME_ADDRESS:I = 0xc3

.field private static final TP_CAUSE_SM_REJECTED_OR_DUPLICATE:I = 0xc5


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private final mDeliveryPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mImsSmsTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastRetryCount:I

.field private mPhoneId:I

.field private mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

.field private mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

.field private mSmsc:Ljava/lang/String;

.field private mStatusMsgIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTpmr:I


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/imsphone/ImsSmsImpl;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sec/internal/imsphone/ImsSmsImpl;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/imsphone/ImsSmsImpl;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSentDeliveryAck(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsLogger(Lcom/sec/internal/imsphone/ImsSmsImpl;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentNetworkType(Lcom/sec/internal/imsphone/ImsSmsImpl;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetTokenByMessageId(Lcom/sec/internal/imsphone/ImsSmsImpl;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getTokenByMessageId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendDelayedMessage(Lcom/sec/internal/imsphone/ImsSmsImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSendDelayedMessage()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStatusReport(Lcom/sec/internal/imsphone/ImsSmsImpl;IILjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleStatusReport(IILjava/lang/String;[B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monReceiveSMSSuccssAcknowledgment(Lcom/sec/internal/imsphone/ImsSmsImpl;IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSmsPduTestReceived(Lcom/sec/internal/imsphone/ImsSmsImpl;ILjava/lang/String;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->onSmsPduTestReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 138
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsSmsImplBase;-><init>()V

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const/4 v1, 0x0

    .line 119
    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    .line 122
    new-instance v1, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener-IA;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    .line 131
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 136
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    .line 1304
    new-instance v1, Lcom/sec/internal/imsphone/ImsSmsImpl$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/ImsSmsImpl$2;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsSmsImpl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "2"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    .line 140
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const/4 p1, -0x1

    .line 142
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    .line 143
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz p1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->registerSmsEventListener()V

    .line 150
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result p1

    if-nez p1, :cond_2

    .line 151
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string v0, "com.sec.internal.google.ImsSmsImpl.PduTest"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register for intent action=com.sec.internal.google.ImsSmsImpl.PduTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x4

    invoke-virtual {v0, v1, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 157
    :cond_2
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 158
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 159
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl$1;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$1;-><init>(Lcom/sec/internal/imsphone/ImsSmsImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private canFallback(I)Z
    .locals 8

    const/4 v0, 0x0

    .line 1198
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1199
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1200
    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1201
    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1204
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v5, :cond_1

    if-ne v4, v6, :cond_1

    const-string v4, "46000"

    .line 1205
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v7

    .line 1207
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v7

    .line 1209
    :cond_2
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    .line 1210
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v3, "gsm.operator.isroaming"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1211
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v3, v4}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p1, v7, :cond_8

    .line 1214
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->isVolteSupported(I)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    .line 1212
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fallback always over NAS (cdmaless / volte roaming)"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1217
    :cond_5
    sget-object p1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, p1, :cond_6

    return v0

    .line 1219
    :cond_6
    sget-object p1, Lcom/sec/internal/constants/Mno;->PLAY:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x12

    if-ne v2, p1, :cond_7

    .line 1220
    new-instance p1, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 1221
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result p1

    if-eq p1, v6, :cond_8

    .line 1222
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_8

    .line 1223
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Block fallback for Play in VoWiFi international roaming"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1226
    :cond_7
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1227
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result p1

    if-ne p1, v3, :cond_8

    return v0

    .line 1232
    :cond_8
    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    if-nez p1, :cond_9

    .line 1233
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "serviceState is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1237
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "serviceState.getState() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_a

    return v7

    :cond_a
    return v0

    .line 1244
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No permission for telephony service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private canFallbackForTimeout()Z
    .locals 7

    const/4 v0, 0x0

    .line 1251
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1252
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1253
    iget v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    const-string v4, "gsm.sim.operator.numeric"

    const-string v5, "00000"

    invoke-static {v3, v4, v5}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->getIccType(I)I

    move-result v4

    .line 1257
    sget-object v5, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v6, 0x1

    if-ne v2, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const-string v4, "46000"

    .line 1258
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46002"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46007"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "46008"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v6

    .line 1260
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v6

    .line 1262
    :cond_2
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_3

    .line 1263
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Block timeout fallback for Orange in VoWiFi roaming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1265
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1266
    :cond_4
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v2

    if-nez v2, :cond_5

    .line 1267
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "serviceState is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1271
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "serviceState.getState() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->semGetServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_6

    .line 1273
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "CanFallbackForTimeout() : SmsFallbackDefaultSupported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    .line 1278
    :catch_0
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "No permission for telephony service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "CanFallbackForTimeout() : SmsFallback is not Supported"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1287
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1288
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "token"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "messageId"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-string p1, "destAddr"

    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string/jumbo p1, "pdu"

    invoke-virtual {p0, p1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    const-string p1, "contentType"

    invoke-virtual {p0, p1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "retryCount"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo p2, "statusReport"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private getSmsFallback()Z
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 687
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->getSmsFallback(I)Z

    move-result p0

    return p0
.end method

.method private getTPMR([B)B
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    .line 667
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    aget-byte v0, p1, p0

    if-lez v0, :cond_2

    .line 674
    array-length v1, p1

    add-int/lit8 v2, v0, 0x2

    if-le v1, v2, :cond_2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aget-byte v0, p1, v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 678
    :cond_1
    aget-byte p0, p1, v2

    :cond_2
    :goto_0
    return p0
.end method

.method private getTokenByMessageId(I)I
    .locals 2

    .line 492
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 493
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 495
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 496
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getMessageId()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;ZI)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 757
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p7

    .line 758
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V

    goto/16 :goto_0

    .line 759
    :cond_0
    sget-object v6, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_1

    .line 760
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 761
    :cond_1
    sget-object v6, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_2

    .line 762
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 763
    :cond_2
    sget-object v6, Lcom/sec/internal/constants/Mno;->UPC_CH:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_3

    .line 764
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 765
    :cond_3
    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 766
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 767
    :cond_4
    sget-object v6, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_5

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 768
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V

    goto/16 :goto_0

    .line 769
    :cond_5
    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_6

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    .line 770
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    goto/16 :goto_0

    .line 771
    :cond_6
    sget-object v6, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_7

    .line 772
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 773
    :cond_7
    sget-object v6, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    .line 774
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    goto :goto_0

    .line 775
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 776
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 777
    :cond_9
    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 778
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_b

    .line 779
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 780
    invoke-virtual {p5, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 781
    invoke-virtual {p5, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v6, 0x4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move-object v5, p5

    .line 782
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_b
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move-object v5, p5

    .line 784
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleBellAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7

    const/16 v0, 0x1f4

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f8

    if-eq p3, v0, :cond_1

    const/16 v0, 0x193

    if-eq p3, v0, :cond_1

    const/16 v0, 0x198

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1038
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1034
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1035
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1036
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleCTCAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    if-eqz p5, :cond_0

    .line 1074
    iget v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    add-int/2addr v0, v1

    .line 1075
    iput v0, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1076
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1077
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 p2, 0x7530

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1079
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 9

    .line 1110
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorCause()I

    move-result v7

    .line 1111
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result v8

    .line 1112
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v4

    if-eqz v8, :cond_4

    const/16 p4, 0x9

    if-eq v8, p4, :cond_2

    const/4 p4, 0x2

    if-eq v8, p4, :cond_1

    const/4 p4, 0x3

    if-eq v8, p4, :cond_0

    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1141
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1130
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x3

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1127
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    .line 1133
    :cond_2
    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry to send over 1x"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x1

    .line 1134
    invoke-direct {p0, p4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallback(I)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 v3, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1135
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1137
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    :cond_4
    const/16 p4, 0x2714

    if-ne p3, p4, :cond_5

    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1117
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v7

    move v6, v8

    .line 1122
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 1143
    :goto_0
    iget-object p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< SEND_SMS_CDMA : token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasonCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorCause = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " errorClass = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleCmccCuCmhkAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6

    if-lez p3, :cond_0

    const v0, 0x8000

    if-ge p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1064
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1065
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1066
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1068
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleDocomoAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 7

    const/4 v2, -0x1

    const/16 v4, 0x1f8

    if-ne p3, v4, :cond_0

    if-ne p6, v2, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    :cond_0
    const/16 v6, 0x3e7

    if-ne p3, v6, :cond_1

    .line 989
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting SMS resend timer. 999 error ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move v5, p6

    :goto_0
    const/16 v6, 0x198

    if-eq p3, v6, :cond_2

    if-ne p3, v4, :cond_4

    :cond_2
    if-eq v5, v2, :cond_4

    if-eqz p5, :cond_4

    .line 994
    iget v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x1

    if-ge v2, v4, :cond_3

    add-int/2addr v2, v4

    .line 995
    iput v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 996
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 997
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    int-to-long v2, v5

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_3
    const/16 v1, 0x9

    .line 999
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1000
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1003
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 10

    const/16 v0, 0x101

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne p2, v0, :cond_3

    if-eq p4, v2, :cond_1

    if-eq p4, v1, :cond_0

    .line 1161
    invoke-virtual {p0, p1, v3, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_0

    .line 1151
    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_0

    .line 1154
    :cond_1
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p2

    if-nez p2, :cond_2

    .line 1155
    invoke-virtual {p0, p1, v2, v2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    goto :goto_0

    .line 1157
    :cond_2
    invoke-virtual {p0, p1, v3, v3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    .line 1164
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onMemoryAvailableResult token = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1168
    :cond_3
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getReasonCode()I

    move-result v8

    if-eq p4, v2, :cond_7

    if-eq p4, v1, :cond_6

    const/4 p5, 0x4

    if-eq p4, p5, :cond_4

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, v8

    .line 1190
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    .line 1171
    :cond_4
    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallback(I)Z

    move-result p5

    if-eqz p5, :cond_5

    .line 1172
    iget-object p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Ims failed. Retry SMS Over SGs/CS"

    invoke-static {p5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1173
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1175
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x3

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v8

    .line 1179
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    goto :goto_1

    .line 1182
    :cond_7
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getErrorClass()I

    move-result p5

    if-nez p5, :cond_8

    .line 1183
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultSuccess(II)V

    goto :goto_1

    :cond_8
    const/4 v7, 0x2

    const/4 v9, 0x2

    move-object v4, p0

    move v5, p1

    move v6, p2

    .line 1186
    invoke-virtual/range {v4 .. v9}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    move p4, v3

    .line 1192
    :goto_1
    iget-object p5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "< SEND_SMS : token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " messageId = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reasonCode = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (1:Ok 2:Error 3:Retry 4:Fallback)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V
    .locals 10

    const/16 v0, 0x9

    const/16 v1, 0x13

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    if-eqz p5, :cond_0

    .line 821
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x6b

    .line 822
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 824
    :cond_0
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 825
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 814
    :pswitch_1
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 815
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_0
    move v8, v3

    goto :goto_2

    :pswitch_2
    if-eqz p5, :cond_1

    .line 805
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    goto :goto_1

    .line 807
    :cond_1
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 808
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_0

    :pswitch_3
    if-eqz p5, :cond_2

    .line 795
    invoke-virtual {p4, v2}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 p5, 0x69

    .line 796
    invoke-virtual {p4, p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_1

    .line 798
    :cond_2
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 799
    invoke-virtual {p4, v3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    :goto_1
    const/4 v3, 0x2

    goto :goto_0

    :goto_2
    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v9, p4

    .line 828
    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private handleKddiRakutenAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 8

    const/4 v4, -0x1

    const/16 v6, 0x9

    const/16 v7, 0x198

    if-ne p6, v4, :cond_3

    if-eqz p3, :cond_2

    .line 955
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 957
    sget-object v2, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    if-eq p3, v7, :cond_0

    const/16 v1, 0x1e8

    if-ne p3, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 958
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 959
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 960
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    .line 962
    :cond_1
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 963
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 966
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_3
    const/16 v4, 0x193

    if-eq p3, v4, :cond_5

    const/16 v4, 0x194

    if-eq p3, v4, :cond_5

    if-eq p3, v7, :cond_5

    const/16 v4, 0x1f4

    if-eq p3, v4, :cond_5

    const/16 v4, 0x1f7

    if-eq p3, v4, :cond_5

    const/16 v4, 0x1f8

    if-eq p3, v4, :cond_5

    const/16 v4, 0x64

    if-lt p3, v4, :cond_5

    const/16 v4, 0x2bb

    if-gt p3, v4, :cond_5

    if-eqz p5, :cond_5

    .line 971
    iget v4, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v7, 0x4

    if-ge v4, v7, :cond_4

    const/4 v3, 0x1

    add-int/2addr v4, v3

    .line 972
    iput v4, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 973
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 974
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    int-to-long v2, p6

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 976
    :cond_4
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 977
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 980
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleNoResponseTimeout(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 11

    .line 432
    iget v7, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    .line 433
    iget v8, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    .line 435
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->canFallbackForTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 440
    :goto_1
    const-string v0, "application/vnd.3gpp.sms"

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v9, " reason = timeOut"

    const-string v10, " messageId = "

    if-eqz p1, :cond_1

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, v7

    move v2, v8

    .line 441
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    .line 442
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoResponseTimeout: onSendSmsResult token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const/16 v5, 0x1f

    const/4 v6, 0x2

    const/4 v4, 0x1

    move-object v0, p0

    move v1, v7

    move v2, v8

    .line 444
    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 446
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleNoResponseTimeout: onSendSmsResponse token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 451
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 452
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNoResponseTimeout : send next delayed message."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private handleOrangeAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7

    const/16 v0, 0x193

    if-eq p3, v0, :cond_2

    const/16 v0, 0x198

    if-eq p3, v0, :cond_2

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-lt p3, v0, :cond_2

    :cond_0
    const/16 v0, 0x2c4

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1048
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 1044
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1045
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1046
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p5

    move-object/from16 v2, p6

    .line 833
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getTpdu()[B

    move-result-object v3

    .line 835
    array-length v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-le v4, v7, :cond_0

    .line 836
    aget-byte v3, v3, v7

    and-int/lit16 v3, v3, 0xff

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    move/from16 v4, p4

    add-int/lit16 v8, v4, -0x8000

    .line 840
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v9

    const/4 v10, 0x4

    const/16 v11, 0x13

    const/16 v12, 0x2a

    const/16 v13, 0x29

    const/4 v14, 0x1

    if-eqz v9, :cond_6

    if-eq v8, v13, :cond_1

    if-eq v8, v12, :cond_1

    const/16 v9, 0x26

    if-ne v8, v9, :cond_6

    :cond_1
    if-nez v2, :cond_2

    .line 846
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "imsSmsTracker is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 847
    :cond_2
    iget v1, v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    if-ge v1, v14, :cond_3

    add-int/2addr v1, v14

    .line 848
    iput v1, v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 849
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v14, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 850
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 854
    :cond_3
    :goto_1
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 857
    invoke-static/range {p7 .. p7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    if-eqz v2, :cond_4

    .line 859
    aget v2, v2, v6

    goto :goto_2

    :cond_4
    const/4 v2, -0x1

    .line 861
    :goto_2
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 862
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 864
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "orange, RP# "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isRoaming is true and DataNetworkType is IWLAN, so CS fallback does not done"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v14

    goto :goto_3

    .line 868
    :cond_5
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 869
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    .line 870
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "orange, set errorcause as fallbackIMS due to RP# "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move v9, v10

    goto :goto_4

    .line 873
    :cond_6
    invoke-direct {p0, v1, v3, v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z

    move-result v2

    const/4 v9, 0x2

    if-eqz v2, :cond_7

    goto :goto_4

    .line 875
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    const/16 v1, 0x15

    if-ne v8, v1, :cond_8

    const/16 v1, 0xc5

    if-ne v3, v1, :cond_8

    .line 879
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 880
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Forced success for NTT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v14

    goto :goto_4

    .line 881
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getSmsFallback()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 882
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 883
    invoke-virtual {v5, v11}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    goto :goto_3

    :cond_9
    if-eq v8, v12, :cond_a

    const/16 v1, 0x6f

    if-eq v8, v1, :cond_a

    const/16 v1, 0x2f

    if-eq v8, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v8, v1, :cond_a

    if-eq v8, v13, :cond_a

    const/16 v1, 0x62

    if-ne v8, v1, :cond_b

    :cond_a
    move v9, v7

    .line 894
    :cond_b
    :goto_4
    iget-object v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRPError: rpCause= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", tpCause= "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v9

    move-object/from16 v5, p5

    .line 895
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    return-void
.end method

.method private handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 2

    .line 1102
    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1103
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleCdmaResult(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    .line 1105
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleGsmResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleSbmAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6

    if-eqz p3, :cond_1

    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    const/16 v0, 0x258

    if-ge p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1010
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1011
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1012
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x9

    .line 1014
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1015
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1018
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleSendDelayedMessage()V
    .locals 3

    .line 386
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 388
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 390
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 391
    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getToken()I

    move-result v0

    .line 392
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    if-eqz v1, :cond_0

    .line 393
    iget-boolean v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    if-nez v2, :cond_0

    .line 394
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 395
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V

    :cond_0
    return-void
.end method

.method private handleSmsRetry(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 9

    .line 402
    iget v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    const/4 v1, 0x0

    .line 403
    iput-boolean v1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    const-wide/32 v2, 0x1fbd0

    const-wide/16 v4, 0x7530

    const/4 v6, 0x2

    .line 405
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 406
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    const-string v7, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPdu:[B

    invoke-direct {p0, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTPRDintoTPDU([B)V

    .line 412
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 417
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 418
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    .line 419
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 420
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 419
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 423
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 424
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 414
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "exception during sms retry"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 416
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 417
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 418
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 416
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_5

    .line 417
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 418
    sget-object v7, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-ne v1, v7, :cond_4

    .line 419
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 420
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 419
    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 423
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 424
    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 423
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 428
    :cond_5
    :goto_2
    throw v0
.end method

.method private handleSprAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 6

    const/16 v0, 0x190

    if-lt p3, v0, :cond_0

    const/16 v0, 0x2bb

    if-gt p3, v0, :cond_0

    const/4 v0, 0x0

    .line 1024
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1025
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1026
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1028
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleStatusReport(IILjava/lang/String;[B)V
    .locals 5

    .line 469
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStatusReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDeliveryPendingList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 473
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    .line 474
    iget v4, v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mMessageId:I

    if-ne v4, p1, :cond_0

    .line 476
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    iget p1, v3, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {p0, p1, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    .line 478
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "statusReport is not matched. But, the messageId is forcibly saved."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    invoke-virtual {p0, v1, p3, p4}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsStatusReportReceived(ILjava/lang/String;[B)V

    :goto_1
    return-void
.end method

.method private handleSwisscomAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;)V
    .locals 6

    const/16 v2, 0x190

    if-eq p3, v2, :cond_0

    const/16 v2, 0x193

    if-eq p3, v2, :cond_0

    const/16 v2, 0x194

    if-eq p3, v2, :cond_0

    const/16 v2, 0x1e8

    if-eq p3, v2, :cond_0

    const/16 v2, 0x1f4

    if-lt p3, v2, :cond_2

    const/16 v2, 0x258

    if-ge p3, v2, :cond_2

    :cond_0
    if-eqz p5, :cond_2

    .line 1087
    iget v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 1088
    iput v2, p5, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 1089
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1090
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1092
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v1, 0x13

    .line 1093
    invoke-virtual {p4, v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1094
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 1097
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_0
    return-void
.end method

.method private handleUpcChAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 7

    const/16 v0, 0x198

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1e0

    if-eq p3, v0, :cond_1

    const/16 v0, 0x1f7

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1058
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1054
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/16 v0, 0x13

    .line 1055
    invoke-virtual {p4, v0}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v5, 0x4

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .line 1056
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private handleVzwAck(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 10

    move-object v0, p0

    move v3, p3

    move-object v5, p4

    move-object v1, p5

    const/16 v2, 0x190

    const/16 v4, 0x13

    const/4 v6, 0x0

    const/16 v7, 0x9

    if-lt v3, v2, :cond_2

    const/16 v2, 0x257

    if-gt v3, v2, :cond_2

    if-eqz v1, :cond_2

    .line 922
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsSmsTracker.mRetryCount =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    const/4 v8, 0x1

    if-ge v2, v8, :cond_0

    add-int/2addr v2, v8

    .line 924
    iput v2, v1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mRetryCount:I

    .line 925
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 926
    iget-object v0, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_0
    if-eqz p6, :cond_1

    .line 929
    invoke-virtual {p4, v7}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 930
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 932
    :cond_1
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 933
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 934
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x309

    if-eq v3, v1, :cond_4

    const/16 v1, 0x320

    if-ne v3, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 947
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz p6, :cond_5

    .line 939
    invoke-virtual {p4, v7}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 940
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    goto :goto_1

    .line 942
    :cond_5
    invoke-virtual {p4, v6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorClass(I)V

    .line 943
    invoke-virtual {p4, v4}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setErrorCause(I)V

    const/4 v4, 0x4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 944
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleResult(IIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V

    :goto_1
    return-void
.end method

.method private isErrorForSpecificCarrier(Lcom/sec/internal/constants/Mno;II)Z
    .locals 3

    .line 899
    sget-object p0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/16 v0, 0x6f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_2

    const/16 p0, 0xc3

    if-eq p2, p0, :cond_1

    if-eq p3, v0, :cond_1

    const/16 p0, 0x1e

    if-eq p3, p0, :cond_1

    const/16 p0, 0x1c

    if-ne p3, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 904
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_5

    const/16 p0, 0x29

    if-eq p3, p0, :cond_4

    const/16 p0, 0x2a

    if-eq p3, p0, :cond_4

    const/16 p0, 0x2f

    if-eq p3, p0, :cond_4

    const/16 p0, 0x62

    if-eq p3, p0, :cond_4

    if-ne p3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    .line 910
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_7

    if-ne p3, v0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :goto_2
    return v1

    .line 912
    :cond_7
    sget-object p0, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_9

    const/16 p0, 0x45

    if-ne p3, p0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    return v1

    :cond_9
    return v2
.end method

.method private isTPRDset([B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 647
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 650
    :cond_0
    aget-byte v1, p1, v0

    if-lez v1, :cond_3

    .line 654
    array-length v2, p1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    if-le v2, v1, :cond_3

    aget-byte p1, p1, v1

    and-int/lit8 v1, p1, 0x1

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    and-int/2addr p1, p0

    if-ne p1, p0, :cond_2

    return v3

    :cond_2
    return v0

    .line 655
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isTPRDset() sca is wrong: return false"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return v0
.end method

.method private onReceiveSMSSuccssAcknowledgment(IIIIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;)V
    .locals 10

    move-object v0, p0

    move v3, p3

    move v4, p4

    .line 713
    iget v1, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 714
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceiveSMSAck: mno = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " messageId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " reasonCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " retryAfter = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, p5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-virtual/range {p6 .. p6}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->getContentType()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move v7, v2

    .line 718
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    if-eqz v6, :cond_3

    .line 721
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    const/4 v9, 0x2

    .line 722
    invoke-virtual {v2, v9, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 724
    :cond_1
    iput-boolean v5, v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mSentComplete:Z

    .line 726
    iget-boolean v2, v6, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    if-eqz v2, :cond_2

    .line 728
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_2

    .line 729
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mDeliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 735
    iget-object v2, v0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    move-object/from16 v5, p6

    .line 738
    invoke-virtual {v5, p3}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;->setMessageRef(I)V

    const/16 v2, 0x2710

    if-ge v2, v4, :cond_4

    const/16 v2, 0x2af8

    if-ge v4, v2, :cond_4

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move-object/from16 v4, p6

    move v5, v7

    .line 742
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleInternalError(IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Z)V

    return-void

    :cond_4
    const v2, 0x8000

    if-ge v2, v4, :cond_5

    const v2, 0x80ff

    if-ge v4, v2, :cond_5

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move v7, p1

    .line 748
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleRPError(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;I)V

    return-void

    :cond_5
    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p6

    move v8, p5

    .line 752
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->handleAck(Lcom/sec/internal/constants/Mno;IIILcom/sec/internal/constants/ims/servicemodules/sms/SmsResponse;Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;ZI)V

    return-void
.end method

.method private onSmsPduTestReceived(ILjava/lang/String;[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 1300
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incoming PduTest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSmsReceived(ILjava/lang/String;[B)V

    return-void
.end method

.method private registerSmsEventListener()V
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    if-eqz v0, :cond_0

    .line 381
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsEventListener:Lcom/sec/internal/imsphone/ImsSmsImpl$SmsEventListener;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V

    :cond_0
    return-void
.end method

.method private resultToCause(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/16 p0, 0x29

    goto :goto_0

    :cond_0
    const/16 p0, 0x6f

    goto :goto_0

    :cond_1
    const/16 p0, 0x16

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    .locals 12

    .line 504
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->getData()Ljava/util/HashMap;

    move-result-object v0

    .line 505
    const-string/jumbo v1, "pdu"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 506
    const-string v2, "destAddr"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    .line 507
    const-string v2, "contentType"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    .line 508
    const-string v2, "messageId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v11, 0x1

    if-nez p2, :cond_0

    .line 511
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-gt v2, v11, :cond_0

    .line 512
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    move v2, v11

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 517
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v3, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mPhoneId:I

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v9

    move-object v6, v10

    move v7, v0

    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    :cond_1
    move v11, v2

    .line 521
    :goto_1
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> SEND_SMS : token = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mToken:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mContentType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " destAddr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-static {v9}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " messageId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " statusReportRequested = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;->mStatusReportRequested:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " smsSent = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 521
    invoke-virtual {p2, v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result p2

    if-nez p2, :cond_2

    .line 524
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pdu = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    if-eqz p2, :cond_4

    if-eqz v11, :cond_4

    .line 528
    iget p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 529
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    const/4 v1, 0x2

    if-ne p2, v0, :cond_3

    .line 530
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 531
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    .line 530
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 534
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mHandler:Landroid/os/Handler;

    .line 535
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x1fbd0

    .line 534
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method private setTPMRintoTPDU([BI)V
    .locals 5

    if-eqz p1, :cond_4

    .line 542
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 545
    aget-byte v1, p1, v0

    if-lez v1, :cond_4

    .line 549
    array-length v2, p1

    add-int/lit8 v3, v1, 0x2

    if-le v2, v3, :cond_4

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 554
    :cond_1
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    .line 555
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->updateTPMR(I)V

    .line 559
    :cond_2
    iget v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    const/16 v4, 0xff

    and-int/2addr v1, v4

    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    if-lt v1, v4, :cond_3

    .line 561
    iput v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_0

    :cond_3
    add-int/2addr v1, v2

    .line 564
    iput v1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    .line 566
    :goto_0
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.radio.tpmr_sms"

    invoke-direct {p0, p2, v1, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 568
    iget p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    int-to-byte p2, p2

    aput-byte p2, p1, v3

    .line 569
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setTPMRintoTPDU mTpmr : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private setTPRDintoTPDU([B)V
    .locals 3

    if-eqz p1, :cond_2

    .line 632
    array-length p0, p1

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 635
    aget-byte p0, p1, p0

    if-lez p0, :cond_2

    .line 639
    array-length v0, p1

    const/4 v1, 0x1

    add-int/2addr p0, v1

    if-le v0, p0, :cond_2

    aget-byte v0, p1, p0

    and-int/lit8 v2, v0, 0x1

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    .line 643
    aput-byte v0, p1, p0

    :cond_2
    :goto_0
    return-void
.end method

.method private setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 584
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 586
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_0

    move-object p3, v1

    :cond_0
    const/16 v3, 0x2c

    const/16 v4, 0x20

    .line 591
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 592
    const-string v3, ","

    if-eqz v2, :cond_1

    .line 593
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 596
    :goto_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_4

    if-eqz v2, :cond_3

    .line 602
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 603
    aget-object v5, v2, v4

    goto :goto_2

    :cond_3
    move-object v5, v1

    .line 605
    :goto_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 608
    :cond_4
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_5

    add-int/lit8 v1, p1, 0x1

    .line 610
    :goto_3
    array-length v4, v2

    if-ge v1, v4, :cond_5

    .line 611
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v4, v2, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 615
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 618
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 620
    :catch_0
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "setTelephonyProperty: utf-8 not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const/16 v2, 0x5b

    if-le v1, v2, :cond_6

    .line 623
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTelephonyProperty: property too long phoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " property="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " propVal="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_6
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 5

    const/4 p2, 0x4

    .line 254
    new-array p2, p2, [B

    .line 257
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_0

    .line 259
    aput-byte v3, p2, v3

    .line 260
    aput-byte v3, p2, v2

    int-to-byte p3, p1

    .line 261
    aput-byte p3, p2, v1

    .line 262
    aput-byte v3, p2, v0

    goto :goto_0

    .line 264
    :cond_0
    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->resultToCause(I)I

    move-result p3

    int-to-byte v4, p3

    .line 267
    aput-byte v4, p2, v3

    const/16 v4, 0x80

    int-to-byte v4, v4

    .line 268
    aput-byte v4, p2, v2

    int-to-byte v2, p1

    .line 269
    aput-byte v2, p2, v1

    .line 270
    aput-byte v3, p2, v0

    move v3, p3

    .line 272
    :goto_0
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p3, v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 273
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 274
    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    .line 276
    :cond_1
    new-instance p3, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    invoke-direct {p3, p2, v3, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;-><init>([BII)V

    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSentDeliveryAck:Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;

    .line 277
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "> SMS_ACK : messageRef = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public acknowledgeSms(III[B)V
    .locals 4

    .line 363
    array-length p2, p4

    const/4 p3, 0x4

    add-int/2addr p2, p3

    new-array p2, p2, [B

    .line 365
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    int-to-byte v2, v0

    .line 368
    aput-byte v2, p2, v0

    int-to-byte v2, v0

    const/4 v3, 0x1

    .line 369
    aput-byte v2, p2, v3

    int-to-byte v2, p1

    .line 370
    aput-byte v2, p2, v1

    .line 371
    array-length v1, p4

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, p2, v2

    .line 372
    array-length v1, p4

    invoke-static {p4, v0, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    iget-object p3, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p4, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-interface {p3, p4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    .line 374
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "> SMS_ACK_WITH_PDU : messageRef = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 3

    .line 303
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mStatusMsgIds:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 304
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acknowledgeSmsReport messageRef = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", statusMsgId = "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0, p1, p1, p3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->acknowledgeSms(III)V

    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 9

    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 312
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.rcs.dmconfigurationprovider/omadm/./3GPP_IMS/SMS_FORMAT"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 313
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "simslot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 312
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_0

    .line 316
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 317
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 312
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    goto :goto_2

    .line 320
    :cond_0
    const-string v3, "3GPP"

    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 321
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 324
    const-string v0, "3GPP2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "3gpp"

    if-eqz v0, :cond_3

    .line 325
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v1

    .line 328
    :cond_2
    const-string p0, "3gpp2"

    return-object p0

    :cond_3
    return-object v1

    .line 321
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 322
    throw p0
.end method

.method public handleRetryDeliveryReportAck(Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;)V
    .locals 2

    if-nez p1, :cond_0

    .line 459
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sentDeliveryAck is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 463
    :cond_0
    iget v0, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mNetworkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget p0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsSmsImpl$LastSentDeliveryAck;->mPdu:[B

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendDeliverReport(I[B)V

    :cond_1
    return-void
.end method

.method public onMemoryAvailable(I)V
    .locals 22

    move-object/from16 v9, p0

    move/from16 v15, p1

    .line 284
    iget-object v4, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v3, 0x101

    const/4 v5, 0x0

    const-string v6, "application/vnd.3gpp.sms"

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v12

    .line 285
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    iget v11, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v14, 0x0

    const/16 v2, 0x101

    const/16 v16, 0x0

    const-string v18, "application/vnd.3gpp.sms"

    const/16 v19, 0x0

    move-object v10, v0

    move/from16 v13, p1

    move v3, v15

    move v15, v2

    move-object/from16 v17, v1

    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 286
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_0
    :try_start_0
    iget-object v10, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    iget v11, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    iget-object v13, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    const-string v14, "application/vnd.3gpp.sms"

    const/16 v15, 0x101

    const/16 v16, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v10 .. v16}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    .line 292
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMemoryAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 294
    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not send onMemoryAvailable: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 295
    invoke-virtual {v9, v3, v0, v0}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onMemoryAvailableResult(III)V

    .line 296
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMemoryAvailableResult token = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 335
    iget v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsSmsImpl;->updateTPMR(I)V

    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 22

    move-object/from16 v9, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p3

    move-object/from16 v0, p6

    .line 186
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;

    invoke-direct {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;-><init>()V

    .line 192
    iget v12, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mLastRetryCount:I

    .line 194
    const-string v11, "3gpp"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "application/vnd.3gpp.sms"

    :goto_0
    move-object/from16 v18, v2

    goto :goto_1

    :cond_0
    const-string v2, "application/vnd.3gpp2.sms"

    goto :goto_0

    .line 197
    :goto_1
    :try_start_0
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 198
    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    .line 199
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 200
    array-length v3, v2

    array-length v4, v0

    add-int/2addr v3, v4

    new-array v3, v3, [B

    .line 202
    array-length v4, v2

    invoke-static {v2, v10, v3, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    array-length v2, v2

    array-length v4, v0

    invoke-static {v0, v10, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 205
    invoke-virtual {v1, v3, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 207
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    .line 210
    invoke-direct {v9, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->isTPRDset([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 212
    invoke-direct {v9, v3}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getTPMR([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v11

    move-object v1, v13

    move v8, v14

    move v7, v15

    goto/16 :goto_5

    .line 214
    :cond_1
    iget v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I

    invoke-direct {v9, v3, v2}, Lcom/sec/internal/imsphone/ImsSmsImpl;->setTPMRintoTPDU([BI)V

    .line 217
    :goto_2
    iget v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    move-object/from16 v17, v0

    move/from16 v19, v1

    move v0, v2

    move-object/from16 v16, v3

    goto :goto_3

    .line 220
    :cond_2
    const-string v2, "3gpp2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 221
    iput v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mCurrentNetworkType:I

    .line 222
    invoke-virtual {v1, v0, v13}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->parseSubmitPdu([BLjava/lang/String;)[B

    .line 223
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getMsgID()I

    move-result v0

    .line 224
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getTpdu()[B

    move-result-object v2

    .line 225
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/sms/SmsMessage;->getStatusReportRequested()Z

    move-result v1

    move/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move-object/from16 v16, v0

    move-object/from16 v17, v16

    move v0, v10

    move/from16 v19, v0

    :goto_3
    move-object/from16 v1, p0

    move/from16 v2, p1

    move v3, v0

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move v7, v12

    move/from16 v8, v19

    .line 229
    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/imsphone/ImsSmsImpl;->getImsSmsTrackerMap(IILjava/lang/String;[BLjava/lang/String;IZ)Ljava/util/HashMap;

    move-result-object v1

    .line 230
    new-instance v2, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;

    iget v3, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mPhoneId:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move v4, v10

    move-object v10, v2

    move-object v5, v11

    move v11, v3

    move v3, v12

    move-object v12, v1

    move-object v1, v13

    move/from16 v13, p1

    move v8, v14

    move v14, v3

    move v7, v15

    move v15, v0

    :try_start_1
    invoke-direct/range {v10 .. v21}, Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;-><init>(ILjava/util/HashMap;III[BLjava/lang/String;Ljava/lang/String;ZZLcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker-IA;)V

    .line 232
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 233
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_5

    .line 235
    :cond_4
    :goto_4
    invoke-direct {v9, v2, v4}, Lcom/sec/internal/imsphone/ImsSmsImpl;->sendSmsOverIms(Lcom/sec/internal/imsphone/ImsSmsImpl$ImsSmsTracker;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_7

    .line 237
    :goto_5
    iget-object v2, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not send sms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, " messageId = "

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v4, 0x2

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    .line 239
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultError(IIIII)V

    .line 241
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendSmsResult token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v7

    goto :goto_6

    :cond_5
    const/16 v6, 0x1f

    const/4 v0, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v11, v7

    move v7, v0

    .line 243
    invoke-virtual/range {v1 .. v7}, Landroid/telephony/ims/stub/ImsSmsImplBase;->onSendSmsResultIncludeErrClass(IIIIII)V

    .line 245
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    iget-object v1, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSendSmsResponse token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_6
    iget-object v0, v9, Lcom/sec/internal/imsphone/ImsSmsImpl;->mImsSmsTrackers:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-void
.end method

.method public setRetryCount(II)V
    .locals 0

    .line 341
    iput p2, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mLastRetryCount:I

    return-void
.end method

.method public setSmsc(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mSmsc:Ljava/lang/String;

    return-void
.end method

.method public updateTPMR(I)V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 574
    const-string/jumbo v0, "persist.radio.tpmr_sms"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 576
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 577
    iput p1, p0, Lcom/sec/internal/imsphone/ImsSmsImpl;->mTpmr:I

    :goto_1
    return-void
.end method
