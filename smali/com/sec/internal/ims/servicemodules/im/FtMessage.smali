.class public abstract Lcom/sec/internal/ims/servicemodules/im/FtMessage;
.super Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.source "FtMessage.java"


# static fields
.field public static final DEFAULT_PLAYING_LENGTH:I = 0x0

.field protected static final DEFAULT_TRANSFER_TIMEOUT:J = 0x493e0L

.field protected static final DEFAULT_WAKE_LOCK_TIMEOUT:J = 0x2710L

.field protected static final EVENT_ACCEPT_TRANSFER:I = 0x4

.field protected static final EVENT_ACCEPT_TRANSFER_DONE:I = 0x5

.field protected static final EVENT_ATTACH_FILE:I = 0x1

.field protected static final EVENT_ATTACH_FILE_ON_CREATE_THUMBNAIL:I = 0x13

.field protected static final EVENT_ATTACH_SLM_FILE:I = 0x10

.field protected static final EVENT_AUTOACCEPT_RESUMING:I = 0xf

.field protected static final EVENT_AUTO_RESUME_FILE_TIMER_TIMEOUT:I = 0x15

.field protected static final EVENT_CANCEL_TRANSFER:I = 0x8

.field protected static final EVENT_CANCEL_TRANSFER_DONE:I = 0x9

.field protected static final EVENT_DELAY_CANCEL_TRANSFER:I = 0x34

.field protected static final EVENT_HANDLE_FILE_RESIZE_RESPONSE:I = 0x14

.field protected static final EVENT_QUEUED_FILE:I = 0xe

.field protected static final EVENT_RECEIVE_TRANSFER:I = 0xa

.field protected static final EVENT_REJECT_TRANSFER:I = 0x6

.field protected static final EVENT_REJECT_TRANSFER_DONE:I = 0x7

.field protected static final EVENT_RETRY_SEND_FILE:I = 0x12

.field protected static final EVENT_SEND_DELIVERED_NOTIFICATION_DONE:I = 0xd

.field protected static final EVENT_SEND_FILE:I = 0xb

.field protected static final EVENT_SEND_FILE_DONE:I = 0x2

.field protected static final EVENT_SEND_FILE_REQUEST_TIMEOUT:I = 0x11

.field protected static final EVENT_SEND_FILE_SESSION_HANDLE:I = 0x16

.field protected static final EVENT_SEND_SLM_FILE_DONE:I = 0xc

.field protected static final EVENT_SET_UP_NETWORK_FAILURE_FOR_FT:I = 0x33

.field protected static final EVENT_SET_UP_NETWORK_SUCCESS_FOR_FT:I = 0x32

.field protected static final EVENT_TRANSFER_PROGRESS:I = 0x3

.field protected static final EVENT_TRANSFER_TIMER_TIMEOUT:I = 0x17

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final MAX_FILE_NAME_LEN:I = 0x80

.field protected static final MAX_RETRY_COUNT:I = 0x3

.field protected static final SET_UP_NETWORK_TIMEOUT:I = 0x3a98

.field private static final sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;",
            ">;"
        }
    .end annotation
.end field

.field protected static final sTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;


# instance fields
.field protected FT_SIZE_MARGIN:J

.field protected MAX_SIZE_DOWNLOAD_THUMBNAIL:J

.field protected MAX_SIZE_THUMBNAIL:J

.field protected mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field protected mContentUri:Landroid/net/Uri;

.field protected mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

.field protected mExtraFt:Z

.field protected mFileBrandedUrl:Ljava/lang/String;

.field protected mFileDataUrl:Ljava/lang/String;

.field protected mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

.field protected mFileExpire:Ljava/lang/String;

.field protected mFileFingerPrint:Ljava/lang/String;

.field protected mFileName:Ljava/lang/String;

.field protected mFilePath:Ljava/lang/String;

.field protected mFileSize:J

.field protected mFileTransferId:Ljava/lang/String;

.field protected mFtCompleteCallback:Landroid/os/Message;

.field protected final mInReplyToContributionId:Ljava/lang/String;

.field protected mIsAutoDownload:Z

.field protected mIsBootup:Z

.field protected mIsConferenceUriChanged:Z

.field protected mIsGroupChat:Z

.field protected mIsNetworkConnected:Z

.field protected mIsNetworkRequested:Z

.field protected mIsResizable:Z

.field protected mIsResuming:Z

.field protected mIsWifiUsed:Z

.field protected mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

.field private mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mPlayingLength:I

.field protected mRawHandle:Ljava/lang/Object;

.field protected mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field protected mResumableOptionCode:I

.field protected mRetryCount:I

.field protected mStateId:I

.field protected mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

.field protected mThumbnailContentType:Ljava/lang/String;

.field protected mThumbnailPath:Ljava/lang/String;

.field protected mTimeDuration:I

.field protected mTransferredBytes:J

.field protected final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$monConnectionChanged(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Landroid/net/Network;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->onConnectionChanged(Landroid/net/Network;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 110
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sTidGenerator:Lcom/sec/internal/ims/servicemodules/im/util/TidGenerator;

    .line 112
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    .line 114
    new-instance v0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    invoke-direct {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 116
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_REJECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REJECTED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 117
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 118
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->TIME_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 119
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 120
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 121
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 122
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 123
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONNECTION_RELEASED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 124
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 125
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 126
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 127
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 128
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CANCELED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 129
    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CLOSED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CONTENT_REACHED_DOWNSIZE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 136
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 137
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->MSRP_SESSION_ERROR_NO_RESUME:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 139
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 140
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 142
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 143
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 144
    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 146
    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 218
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;-><init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V

    const-wide/16 v0, 0x2400

    .line 151
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->MAX_SIZE_THUMBNAIL:J

    const-wide/32 v0, 0x19000

    .line 153
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->MAX_SIZE_DOWNLOAD_THUMBNAIL:J

    const-wide/16 v0, 0x2800

    .line 155
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->FT_SIZE_MARGIN:J

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    .line 198
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    .line 203
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 220
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    .line 222
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmFilePath(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 223
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmContentUri(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentUri:Landroid/net/Uri;

    .line 224
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmFileName(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    .line 225
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmFileSize(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    .line 226
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmFileDisposition(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    .line 227
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmPlayingLength(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    .line 228
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmThumbnailPath(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    .line 229
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmExtraFt(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtraFt:Z

    .line 230
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmTimeDuration(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTimeDuration:I

    .line 231
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmTransferredBytes(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    .line 232
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmInReplyToContributionId(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mInReplyToContributionId:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmFileTransferId(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileTransferId:Ljava/lang/String;

    .line 234
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmResumableOptionCode(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    .line 235
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmCancelReason(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->valueOf(I)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 236
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmIsResizable(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResizable:Z

    .line 237
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmIsGroupChat(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    .line 239
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 240
    const-class v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 241
    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 243
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmLooper(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->-$$Nest$fgetmCurrentStateMachineState(Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->initStateMachine(Landroid/os/Looper;I)V

    .line 244
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileFingerPrint:Ljava/lang/String;

    return-void
.end method

.method protected static checkAvailableStorage(Ljava/lang/String;J)Z
    .locals 5

    const/4 v0, 0x0

    .line 257
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v1

    .line 263
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAvailableStorage: reqSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " available="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p0, p1, v1

    if-gtz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 259
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    .line 269
    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 270
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0

    .line 273
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method private onConnectionChanged(Landroid/net/Network;Z)V
    .locals 3

    .line 782
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectionChanged: network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", available = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 784
    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    if-nez p2, :cond_2

    if-eqz p1, :cond_0

    .line 786
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    const/4 p1, 0x1

    .line 787
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    .line 788
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 p1, 0x32

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 790
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 794
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 795
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    const/4 p1, 0x0

    .line 796
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected static translateToCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 2

    .line 248
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sCancelReasonTranslator:Lcom/sec/internal/helper/translate/MappingTranslator;

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MappingTranslator;->isTranslationDefined(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/translate/MappingTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object p0

    .line 251
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object p0
.end method


# virtual methods
.method public acceptTransfer(Landroid/net/Uri;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentUri:Landroid/net/Uri;

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected acquireNetworkForFT(I)V
    .locals 3

    .line 749
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "acquireNetworkForFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 750
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    const/16 v0, 0x33

    .line 752
    :try_start_0
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    .line 753
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 754
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 755
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 757
    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {v2, p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 760
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 762
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 763
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, p1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 764
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, p1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 765
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 767
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_2
    return-void
.end method

.method protected acquireWakeLock()V
    .locals 3

    .line 663
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acquireWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method

.method public attachFile(Z)V
    .locals 1

    .line 301
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public attachSlmFile()V
    .locals 1

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V
    .locals 1

    .line 333
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected checkAvailableRetry()Z
    .locals 3

    .line 648
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 649
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p0

    .line 650
    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 651
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method protected checkValidPeriod()Z
    .locals 5

    const/4 v0, 0x1

    .line 623
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileExpire()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 626
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 628
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    .line 629
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Failed to parse FtHttpFileInfo or fileExpire is null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 636
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 637
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 639
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkValidPeriod: expiredDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " currentDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 642
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public conferenceUriChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 655
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsConferenceUriChanged:Z

    return-void
.end method

.method protected abstract createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;
.end method

.method protected deleteFile()Z
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    .line 593
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected deleteThumbnail()Z
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    const/4 v1, 0x0

    .line 605
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    .line 421
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object p0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getErrorNotificationId()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mErrorNotificationId:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    return-object p0
.end method

.method public getExtraFt()Z
    .locals 0

    .line 466
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtraFt:Z

    return p0
.end method

.method public getFileBrandedUrl()Ljava/lang/String;
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileBrandedUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getFileDataUrl()Ljava/lang/String;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDataUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getFileDisposition()Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;
    .locals 0

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    return-object p0
.end method

.method public getFileExpire()Ljava/lang/String;
    .locals 0

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileExpire:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    .line 375
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    return-object p0
.end method

.method public getFileSize()J
    .locals 2

    .line 387
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    return-wide v0
.end method

.method public getFileTransferId()Ljava/lang/String;
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileTransferId:Ljava/lang/String;

    return-object p0
.end method

.method public getFtCallback()Landroid/os/Message;
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    return-object p0
.end method

.method protected getFtHttpUserAgent()Ljava/lang/String;
    .locals 1

    .line 675
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIsResizable()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResizable:Z

    return p0
.end method

.method public getPlayingLength()I
    .locals 0

    .line 415
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mPlayingLength:I

    return p0
.end method

.method public getReasonId()I
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-nez p0, :cond_0

    .line 447
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result p0

    return p0

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result p0

    return p0
.end method

.method public getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    return-object p0
.end method

.method public getResumableOptionCode()I
    .locals 0

    .line 474
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    return p0
.end method

.method public getRetryCount()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    return p0
.end method

.method public getServiceTag()Ljava/lang/String;
    .locals 0

    .line 367
    const-string p0, "FT"

    return-object p0
.end method

.method public getStateId()I
    .locals 0

    .line 434
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getStateId()I

    move-result p0

    return p0
.end method

.method public getStateName()Ljava/lang/String;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getState()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeDuration()I
    .locals 0

    .line 470
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTimeDuration:I

    return p0
.end method

.method public abstract getTransferMech()I
.end method

.method public getTransferredBytes()J
    .locals 2

    .line 454
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    return-wide v0
.end method

.method public handleFileResizeResponse(ZLandroid/net/Uri;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 341
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;-><init>(ZLjava/lang/String;)V

    .line 342
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public handleTransferProgress(Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;)V
    .locals 1

    .line 355
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected initStateMachine(Landroid/os/Looper;I)V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 280
    :cond_1
    :goto_0
    const-string v0, ""

    .line 285
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->createFtStateMachine(Ljava/lang/String;Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsBootup:Z

    .line 292
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getState(Ljava/lang/Integer;)Lcom/sec/internal/helper/State;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->initState(Lcom/sec/internal/helper/State;)V

    .line 293
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;->getStateId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateId:I

    return-void
.end method

.method protected invokeFtQueueCallBack()V
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 613
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 614
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 616
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mFtCompleteCallback is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 618
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    return-void
.end method

.method public isAutoResumable()Z
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getEnableFtAutoResumable()Z

    move-result p0

    return p0
.end method

.method public isConferenceUriChanged()Z
    .locals 0

    .line 659
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsConferenceUriChanged:Z

    return p0
.end method

.method protected isExternalStorageAvailable()Z
    .locals 1

    .line 551
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p0

    .line 552
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isResuming()Z
    .locals 0

    .line 527
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    return p0
.end method

.method public listToDumpFormat(IILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 803
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p3, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 804
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "none"

    const/4 v2, 0x4

    if-eqz p2, :cond_0

    :try_start_1
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object p2, v1

    :goto_0
    const/4 v3, 0x1

    invoke-interface {p3, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 805
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 p2, 0x2

    invoke-interface {p3, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 806
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v0, :cond_2

    const-string p2, "MT"

    goto :goto_1

    :cond_2
    const-string p2, "MO"

    :goto_1
    const/4 v0, 0x3

    invoke-interface {p3, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 807
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    const-string p2, ""

    .line 809
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_3

    const/16 v1, 0x2e

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_3

    .line 812
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    add-int/lit8 p2, v0, 0x1

    add-int/2addr v0, v2

    invoke-virtual {p0, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    const/4 p0, 0x5

    .line 815
    invoke-interface {p3, p0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 816
    const-string p0, ","

    invoke-static {p0, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    .line 817
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 819
    :goto_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string p2, "listToDumpFormat has an exception"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method protected needToAcquireNetworkForFT()Z
    .locals 2

    .line 744
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "ft_internet_pdn"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string v1, "ft_net_capability"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isWifiConnected()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public receiveTransfer(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)V
    .locals 0

    .line 346
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    .line 347
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    if-eqz p3, :cond_0

    .line 348
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne p1, p3, :cond_0

    .line 349
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 351
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 p1, 0xa

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public rejectTransfer()V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected releaseNetworkAcquiredForFT()V
    .locals 2

    .line 773
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "releaseNetworkAcquiredForFT"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 775
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mNetworkStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 776
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkRequested:Z

    .line 778
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsNetworkConnected:Z

    return-void
.end method

.method protected releaseWakeLock()V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public removeAutoResumeFileTimer()V
    .locals 1

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected renameFile()Z
    .locals 6

    .line 558
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 559
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temporary file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestIncomingFtTransferPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 563
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 565
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    const-string v4, "Fail to create folder"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-static {v2, v4, v5}, Lcom/sec/internal/helper/FilePathGenerator;->generateUniqueFilePath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new file path: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 574
    const-string p0, "file rename success"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const-string p0, "file rename failure"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 581
    :cond_2
    const-string p0, "Error in getting directory"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method

.method protected sendCancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V
    .locals 4

    .line 720
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 723
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$CancelReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 728
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    goto :goto_0

    .line 725
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->SESSION_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 733
    :goto_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRawHandle:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileTransferId:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;-><init>(Ljava/lang/Object;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;Ljava/lang/String;)V

    .line 736
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz p1, :cond_1

    .line 737
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_1

    .line 739
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    :goto_1
    return-void
.end method

.method public sendFile()V
    .locals 1

    .line 316
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method protected sendSlmFile(Landroid/os/Message;)Z
    .locals 23

    move-object/from16 v0, p0

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;->onRequestParticipantUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    .line 685
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkSlmFileType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    move-object v4, v2

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    iget-wide v11, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    move-object v13, v14

    iget-object v15, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    move-object/from16 v16, v3

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mInReplyToContributionId:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    move-object/from16 v18, v3

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    move-object/from16 v19, v3

    .line 693
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isBroadcastMsg()Z

    move-result v21

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v20, p1

    invoke-direct/range {v4 .. v22}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;-><init>(ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZLjava/lang/String;)V

    .line 691
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V

    const/4 v0, 0x1

    return v0

    .line 686
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t send slm. mContentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mFilePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_NO_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    const/4 v0, 0x0

    return v0
.end method

.method public setContentUri(Landroid/net/Uri;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentUri:Landroid/net/Uri;

    return-void
.end method

.method public setContributionId(Ljava/lang/String;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    return-void
.end method

.method public setConversationId(Ljava/lang/String;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method public setFtCompleteCallback(Landroid/os/Message;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFtCompleteCallback:Landroid/os/Message;

    return-void
.end method

.method public setIsGroupChat(Z)V
    .locals 0

    .line 547
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    return-void
.end method

.method public setIsResizable(Z)V
    .locals 0

    .line 543
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResizable:Z

    return-void
.end method

.method public setIsResuming(Z)V
    .locals 0

    .line 531
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRetryCount:I

    return-void
.end method

.method public setTransferredBytes(I)V
    .locals 2

    int-to-long v0, p1

    .line 458
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    return-void
.end method

.method public startFileTransferTimer()V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FtMessage [mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFilePath:Ljava/lang/String;

    .line 830
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mContentUri:Landroid/net/Uri;

    .line 831
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mThumbnailPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTimeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRejectReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCancelReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResuming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mIsResuming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mWakeLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraFt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mExtraFt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFileFingerPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileFingerPrint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileDisposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mFileDisposition:Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateBody(Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 426
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateQueued()V
    .locals 2

    .line 502
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateQueued"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateMachine:Lcom/sec/internal/ims/servicemodules/im/FtMessage$FtStateMachine;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateResumeableOptionCode(I)V
    .locals 1

    .line 515
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    if-eq v0, p1, :cond_0

    .line 516
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mResumableOptionCode:I

    .line 517
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateState()V
    .locals 2

    .line 507
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    .line 508
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateId:I

    if-eq v1, v0, :cond_0

    .line 509
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mStateId:I

    .line 510
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateTransferredBytes(J)V
    .locals 0

    .line 522
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->mTransferredBytes:J

    .line 523
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method protected validateFileResizeResponse(Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;)Z
    .locals 7

    .line 699
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 700
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "validateFileResizeResponse called for non SLM msg, return"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 703
    :cond_0
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->isResizeSuccessful:Z

    const-string/jumbo v2, "validateFileResizeResponse File resizing failed id:"

    if-nez v0, :cond_1

    .line 704
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 707
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->resizedFilePath:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 708
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateFileResizeResponse no resized filepath, id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 711
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/data/response/FileResizeResponse;->resizedFilePath:Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmMaxMsgSize()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 713
    :cond_4
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length:"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
