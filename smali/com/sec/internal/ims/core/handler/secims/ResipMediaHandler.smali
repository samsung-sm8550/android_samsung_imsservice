.class public Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;
.super Lcom/sec/internal/ims/core/handler/MediaHandler;
.source "ResipMediaHandler.java"


# static fields
.field private static final DTMF_VOLUME:I = 0x55

.field private static final EVENT_CAMERA_START:I = 0x190

.field private static final EVENT_CAMERA_STOP:I = 0x191

.field private static final EVENT_CONNECT_TO_SVE:I = 0x12c

.field private static final EVENT_HOLD_VIDEO_RESPONSE:I = 0xc9

.field private static final EVENT_MODIFY_VIDEO:I = 0x6b

.field private static final EVENT_RESUME_VIDEO_RESPONSE:I = 0xca

.field private static final EVENT_SVE_CONNECTED:I = 0x12d

.field private static final EVENT_VIDEO_EVENT:I = 0x6c

.field public static final MAX_VIDEO_CODEC_LIST_CHAR_SIZE:I = 0x100

.field private static final NOTIFY_CAM_CAPABILITY:I = 0x12

.field private static final NOTIFY_CAM_CAPTURE_FAILURE:I = 0xd

.field private static final NOTIFY_CAM_CAPTURE_SUCCESS:I = 0xc

.field private static final NOTIFY_CAM_DISABLED_ERROR:I = 0x10

.field private static final NOTIFY_CAM_FIRST_FRAME_READY:I = 0x8

.field private static final NOTIFY_CAM_START_FAILURE:I = 0x7

.field private static final NOTIFY_CAM_START_SUCCESS:I = 0x6

.field private static final NOTIFY_CAM_STOP_SUCCESS:I = 0x9

.field private static final NOTIFY_CAM_SWITCH_FAILURE:I = 0xb

.field private static final NOTIFY_CAM_SWITCH_SUCCESS:I = 0xa

.field private static final NOTIFY_CHANGE_PEER_DIMENSION:I = 0xf

.field private static final NOTIFY_EMOJI_INFO_CHANGE:I = 0x4a

.field private static final NOTIFY_EMOJI_START_FAILURE:I = 0x47

.field private static final NOTIFY_EMOJI_START_SUCCESS:I = 0x46

.field private static final NOTIFY_EMOJI_STOP_FAILURE:I = 0x49

.field private static final NOTIFY_EMOJI_STOP_SUCCESS:I = 0x48

.field private static final NOTIFY_FAR_FRAME_READY:I = 0x5

.field private static final NOTIFY_IDC_ARCALL_START:I = 0x5d

.field private static final NOTIFY_IDC_ARCALL_STOP:I = 0x5e

.field private static final NOTIFY_IDC_SCREEN_SHARE_START:I = 0x5b

.field private static final NOTIFY_IDC_SCREEN_SHARE_STOP:I = 0x5c

.field private static final NOTIFY_LCL_CAPTURE_FAILURE:I = 0x2

.field private static final NOTIFY_LCL_CAPTURE_SUCCESS:I = 0x1

.field private static final NOTIFY_NO_FAR_FRAME:I = 0xe

.field private static final NOTIFY_RECORD_START_FAILURE:I = 0x33

.field private static final NOTIFY_RECORD_START_FAILURE_NO_MEMORY:I = 0x34

.field private static final NOTIFY_RECORD_START_SUCCESS:I = 0x32

.field private static final NOTIFY_RECORD_STOP_FAILURE:I = 0x3d

.field private static final NOTIFY_RECORD_STOP_SUCCESS:I = 0x3c

.field private static final NOTIFY_RMT_CAPTURE_FAILURE:I = 0x4

.field private static final NOTIFY_RMT_CAPTURE_SUCCESS:I = 0x3

.field private static final NOTIFY_VCID_GENERAL_FAILURE:I = 0x5a

.field public static final NOTIFY_VIDEO_ATTEMPTED:I = 0x28

.field public static final NOTIFY_VIDEO_FAIR_QUALITY:I = 0x1f

.field public static final NOTIFY_VIDEO_FIRST_PACKET_RECV:I = 0x11

.field public static final NOTIFY_VIDEO_GOOD_QUALITY:I = 0x20

.field public static final NOTIFY_VIDEO_MAX_QUALITY:I = 0x22

.field public static final NOTIFY_VIDEO_POOR_QUALITY:I = 0x1e

.field public static final NOTIFY_VIDEO_RTCP_CLEAR:I = 0x17

.field public static final NOTIFY_VIDEO_RTCP_TIMEOUT:I = 0x15

.field public static final NOTIFY_VIDEO_RTP_CLEAR:I = 0x16

.field public static final NOTIFY_VIDEO_RTP_TIMEOUT:I = 0x14

.field public static final NOTIFY_VIDEO_VERYPOOR_QUALITY:I = 0x21


# instance fields
.field private mContext:Landroid/content/Context;

.field public mHwSupportedVideoCodecList:Ljava/lang/String;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

.field private mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

.field private mRingBackToneThread:Landroid/os/HandlerThread;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveConnected:Z

.field private mSveConnecting:Z

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;

.field private mToneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method static bridge synthetic -$$Nest$fputmSveConnected(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSveConnecting(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 353
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/MediaHandler;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    .line 113
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    .line 114
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    const/4 p1, 0x0

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    .line 121
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    .line 354
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    .line 355
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 356
    new-instance p1, Lcom/sec/sve/SecVideoEngineManager;

    new-instance p3, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V

    invoke-direct {p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method private connectToSve()V
    .locals 3

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is not connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    if-nez v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    const/4 v0, 0x1

    .line 799
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    :cond_0
    return-void
.end method

.method private getSupportVowifiDisable5gsa(Ljava/lang/String;)Z
    .locals 8

    .line 1447
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "xpath"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1448
    const-string/jumbo v1, "tag_name"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1449
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1451
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSupportVowifiDisable5gsa : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    .line 1453
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1454
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1456
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getSupportVowifiDisable5gsa : cursor is null"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v2, :cond_2

    .line 1458
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :goto_1
    if-eqz v2, :cond_1

    .line 1451
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p1
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1459
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportVowifiDisable5gsa: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_2
    :goto_4
    const-string p0, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return v0
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 546
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 548
    const-string v0, "mmtel-video"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v0, :cond_0

    .line 551
    const-string/jumbo v0, "vs"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    :cond_0
    return-object v0
.end method

.method private getUaForMediaEvent(III)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    const-string p2, "mmtel-video"

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    goto :goto_1

    .line 575
    :cond_1
    :goto_0
    const-string/jumbo p2, "vs"

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    goto :goto_1

    .line 580
    :cond_2
    const-string p2, "mmtel"

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getUaWithService(ILjava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 558
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 562
    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_0

    .line 564
    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    :goto_0
    return-object p0
.end method

.method private onHoldVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 1

    .line 731
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 733
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 735
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 737
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HOLD_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 739
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onModifyVideo(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5

    .line 587
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;

    .line 588
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->session()J

    move-result-wide v0

    long-to-int v0, v0

    .line 589
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->direction()J

    move-result-wide v1

    long-to-int v1, v1

    .line 590
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ModifyVideoData;->isHeldCall()Z

    move-result p1

    .line 592
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onModifyVideo() session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isHoldCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 596
    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    if-nez v1, :cond_0

    .line 599
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_HELD:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 601
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUMED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 604
    :goto_0
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setIsHeldCall(Z)V

    .line 606
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onResumeVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 1

    .line 744
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;

    .line 746
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CallResponse;->result()I

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 748
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 750
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RESUME_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 752
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onSveConnected()V
    .locals 3

    .line 804
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/sve/SecVideoEngineManager;->notifyImsServiceReady(Landroid/os/IBinder;)V

    .line 806
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->registerMediaEventListener()V

    .line 807
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->saeTerminate()V

    .line 809
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getMediaSupportedVideoCodecs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hwSupportedVideoCodecList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 812
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SVE was not connected!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onVideoEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 7

    .line 610
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;

    .line 611
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->phoneId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 612
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->session()J

    move-result-wide v1

    long-to-int v1, v1

    .line 613
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->event()J

    move-result-wide v2

    long-to-int v2, v2

    .line 614
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->arg1()J

    move-result-wide v3

    long-to-int v3, v3

    .line 615
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyVideoEventData;->arg2()J

    move-result-wide v4

    long-to-int p1, v4

    .line 617
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onVideoEvent() session: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v4}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 620
    invoke-virtual {v4, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 621
    invoke-virtual {v4, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/16 v0, 0x12

    if-eq v2, v0, :cond_5

    const/16 v0, 0x28

    if-eq v2, v0, :cond_4

    const/16 v0, 0x14

    if-eq v2, v0, :cond_3

    const/16 v0, 0x15

    if-eq v2, v0, :cond_2

    const/16 v0, 0x3c

    if-eq v2, v0, :cond_1

    const/16 v0, 0x3d

    if-eq v2, v0, :cond_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_0

    .line 723
    :pswitch_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_INFO_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 720
    :pswitch_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 717
    :pswitch_2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 714
    :pswitch_3
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 711
    :pswitch_4
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->EMOJI_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 702
    :pswitch_5
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE_NO_SPACE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 699
    :pswitch_6
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 696
    :pswitch_7
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 655
    :pswitch_8
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_MAX_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 652
    :pswitch_9
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_VERYPOOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 649
    :pswitch_a
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_GOOD_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 646
    :pswitch_b
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_FAIR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 643
    :pswitch_c
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_POOR_QUALITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 688
    :pswitch_d
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_DISABLED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 683
    :pswitch_e
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 684
    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 685
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CHANGE_PEER_DIMENSION:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto/16 :goto_0

    .line 677
    :pswitch_f
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->NO_FAR_FRAME:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 640
    :pswitch_10
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 637
    :pswitch_11
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_SWITCH_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 664
    :pswitch_12
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 625
    :pswitch_13
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_FIRST_FRAME_READY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 658
    :pswitch_14
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_FAIL:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 661
    :pswitch_15
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_START_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 628
    :pswitch_16
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 674
    :pswitch_17
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_FAILED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 669
    :pswitch_18
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAPTURE_SUCCEEDED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 708
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_FAILURE:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 705
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->RECORD_STOP_SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 634
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTCP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 631
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_RTP_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 680
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->VIDEO_ATTEMPTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    goto :goto_0

    .line 691
    :cond_5
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setWidth(I)V

    .line 692
    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setHeight(I)V

    .line 693
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;->CAMERA_CAPABILITY:Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;

    invoke-virtual {v4, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$MEDIA_STATE;)V

    .line 727
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/MediaHandler;->mMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_18
        :pswitch_17
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x32
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x46
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->bindToNetwork(Landroid/net/Network;)V

    return-void
.end method

.method public deinitToneGenerator()V
    .locals 2

    .line 1096
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deinit ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    const/4 v0, 0x0

    .line 1099
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method public getHwSupportedVideoCodecs(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1387
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 1391
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1392
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mHwSupportedVideoCodecList:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1395
    array-length v2, p1

    const/4 v3, 0x0

    const-string v4, ""

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_4

    aget-object v6, p1, v5

    .line 1396
    array-length v7, v1

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v1, v8

    .line 1397
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1398
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v4, v6

    goto :goto_2

    .line 1401
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1406
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHwSupportedVideoCodecs filteredCodecs : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1388
    :cond_5
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getHwSupportedVideoCodecs - fails to get HW supported codec"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getMediaSupportedVideoCodecs()Ljava/lang/String;
    .locals 9

    .line 1411
    const-string v0, "H263,H264"

    .line 1412
    new-instance v1, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 1415
    const-string/jumbo v2, "video/hevc"

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v5

    .line 1416
    invoke-static {v2, v4, v3}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 1419
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v3

    .line 1420
    invoke-virtual {v1, v5}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v4

    .line 1421
    invoke-virtual {v1, v2}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v5

    .line 1422
    invoke-virtual {v1, v2}, Landroid/media/MediaCodecList;->findDecoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1424
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isMediaH265VideoCodecSupported: encoders: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v7, "null"

    if-nez v3, :cond_0

    move-object v8, v7

    goto :goto_0

    :cond_0
    move-object v8, v3

    :goto_0
    :try_start_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isMediaH265VideoCodecSupported: decoders: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    move-object v8, v7

    goto :goto_1

    :cond_1
    move-object v8, v4

    .line 1425
    :goto_1
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isMediaH265LVideoCodecSupported: encoders: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v5, :cond_2

    move-object v8, v7

    goto :goto_2

    :cond_2
    move-object v8, v5

    .line 1426
    :goto_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", isMediaH265LVideoCodecSupported: decoders: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v7, v1

    .line 1427
    :goto_3
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1424
    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1430
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",H265"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 1434
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMediaSupportedVideoCodecs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    return-object v0
.end method

.method public getSupportVowifiDisable5gsa()Z
    .locals 1

    .line 1441
    const-string v0, "//EPSFB/VoWiFiDisable5GSA"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getSupportVowifiDisable5gsa(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "//VoNR/VoWiFiDisable5GSA"

    .line 1442
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getSupportVowifiDisable5gsa(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 758
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_7

    const/16 v1, 0x6c

    if-eq v0, v1, :cond_6

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_5

    const/16 v1, 0xca

    if-eq v0, v1, :cond_4

    const/16 v1, 0x12c

    if-eq v0, v1, :cond_3

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x190

    if-eq v0, v1, :cond_1

    const/16 p1, 0x191

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 789
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->sveStopCamera()I

    goto :goto_0

    .line 785
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStartCamera(II)I

    goto :goto_0

    .line 781
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onSveConnected()V

    goto :goto_0

    .line 777
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->connectToSve()V

    goto :goto_0

    .line 773
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onResumeVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 769
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onHoldVideoResponse(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 765
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onVideoEvent(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 761
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->onModifyVideo(Lcom/sec/internal/helper/AsyncResult;)V

    :goto_0
    return-void
.end method

.method public holdVideo(II)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "holdVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 407
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->holdVideo(ILandroid/os/Message;)V

    return-void
.end method

.method public init()V
    .locals 3

    .line 378
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 380
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    .line 382
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerModifyVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x6c

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerVideoEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 385
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnected:Z

    .line 386
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveConnecting:Z

    const/16 v0, 0x12c

    .line 387
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RingBackToneThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    .line 390
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 391
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    return-void
.end method

.method public initToneGenerator()V
    .locals 3

    .line 1088
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init ToneGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    new-instance v0, Landroid/media/ToneGenerator;

    const/16 v1, 0x8

    const/16 v2, 0x55

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    :cond_0
    return-void
.end method

.method public muteLocalRingBackTone()Z
    .locals 2

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;->isPlayingRingBackTone()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    .line 1251
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1252
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1
.end method

.method public registerMediaEventListener()V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/sve/SecVideoEngineManager;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    return-void
.end method

.method public restartEmoji(II)V
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p2}, Lcom/sec/sve/SecVideoEngineManager;->restartEmoji(I)V

    return-void
.end method

.method public resumeVideo(II)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resumeVideo: sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 420
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 419
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->resumeVideo(ILandroid/os/Message;)V

    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 12

    move-object v0, p0

    .line 843
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/sec/sve/SecVideoEngineManager;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public saeDeleteChannel(I)I
    .locals 0

    .line 870
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeDeleteChannel(I)I

    move-result p0

    return p0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 6

    .line 885
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->saeEnableSRTP(III[BI)I

    move-result p0

    return p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 0

    .line 930
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeGetAudioRxTrackId(I)I

    move-result p0

    return p0
.end method

.method public saeGetLastPlayedVoiceTime(I)Ljava/lang/Object;
    .locals 0

    .line 910
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public saeGetVersion([BI)I
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeGetVersion([BI)I

    move-result p0

    return p0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->saeHandleDtmf(IIII)I

    move-result p0

    return p0
.end method

.method public saeInitialize(III)V
    .locals 3

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saeInitialize convertedMno = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeInitialize(III)V

    return-void
.end method

.method public saeModifyChannel(II)I
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeModifyChannel(II)I

    move-result p0

    return p0
.end method

.method public saeSetAudioPath(II)I
    .locals 0

    .line 935
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetAudioPath(II)I

    move-result p0

    return p0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 31

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v0, p0

    .line 831
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object/from16 p0, v0

    move/from16 v0, p21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 6

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->saeSetDtmfCodecInfo(IIIII)I

    move-result p0

    return p0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 0

    .line 890
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpOnCall(III)I

    move-result p0

    return p0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 0

    .line 900
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpTimeout(IJ)I

    move-result p0

    return p0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 7

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtcpXr(IIIII[I)I

    move-result p0

    return p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 0

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeSetRtpTimeout(IJ)I

    move-result p0

    return p0
.end method

.method public saeSetTOS(II)I
    .locals 0

    .line 920
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetTOS(II)I

    move-result p0

    return p0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeSetVoicePlayDelay(II)I

    move-result p0

    return p0
.end method

.method public saeStartChannel(IIZ)I
    .locals 0

    .line 849
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->saeStartChannel(IIZ)I

    move-result p0

    return p0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 0

    .line 1045
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->saeStartRecording(IIIZ)I

    move-result p0

    return p0
.end method

.method public saeStopChannel(I)I
    .locals 0

    .line 860
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->saeStopChannel(I)I

    move-result p0

    return p0
.end method

.method public saeStopRecording(IZ)I
    .locals 0

    .line 1050
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->saeStopRecording(IZ)I

    move-result p0

    return p0
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 9

    move-object v0, p0

    .line 855
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 536
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendGeneralBundleEvent - event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "extras: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendGeneralEvent(IIILjava/lang/String;)V
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    return-void
.end method

.method public sendMediaEvent(IIII)V
    .locals 0

    .line 1270
    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUaForMediaEvent(III)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1273
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "User Agent was empty!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1277
    :cond_0
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMediaEvent(III)V

    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAudioParameters(ILjava/lang/String;)V
    .locals 4

    .line 1125
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 1127
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    .line 1128
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1132
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "skip to set to Audio F/W"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1129
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " set to Audio F/W"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public setCamera(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setCameraEffect(I)V

    return-void
.end method

.method public setDisplaySurface(ILjava/lang/Object;I)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisplaySurface() sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->setDisplaySurface(ILandroid/view/Surface;I)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setOrientation(I)V

    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 0

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewResolution(II)V

    return-void
.end method

.method public setPreviewSurface(ILjava/lang/Object;I)V
    .locals 3

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPreviewSurface() sessionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    check-cast p2, Landroid/view/Surface;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->setPreviewSurface(ILandroid/view/Surface;I)V

    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->setZoom(F)V

    return-void
.end method

.method public startCamera(III)V
    .locals 1

    .line 426
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startCamera: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object p0

    .line 432
    const-string/jumbo p1, "persist.ims.salescode.sve"

    invoke-static {p1, p0}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startCamera(II)V

    return-void
.end method

.method public startEmoji(IILjava/lang/String;)V
    .locals 0

    .line 515
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->startEmoji(ILjava/lang/String;)V

    return-void
.end method

.method public startLocalRingBackTone(III)I
    .locals 3

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting RBT.. with st-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tt-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1231
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1232
    const-string/jumbo v2, "streamType"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1233
    const-string/jumbo p1, "volume"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1234
    const-string/jumbo p1, "toneType"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1235
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1236
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public startRecord(IILjava/lang/String;)V
    .locals 0

    .line 495
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "startRecord: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 500
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startRecord(ILjava/lang/String;)V

    return-void
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 11

    move-object v0, p0

    .line 1320
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/sec/sve/SecVideoEngineManager;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public steDeleteChannel(I)I
    .locals 0

    .line 1336
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->steDeleteChannel(I)I

    move-result p0

    return p0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 6

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->steEnableSRTP(III[BI)I

    move-result p0

    return p0
.end method

.method public steInitialize()V
    .locals 0

    .line 1283
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->steInitialize()V

    return-void
.end method

.method public steModifyChannel(II)I
    .locals 0

    .line 1347
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steModifyChannel(II)I

    move-result p0

    return p0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 0

    .line 1362
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSendText(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public steSetCallOptions(IZ)I
    .locals 0

    .line 1367
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetCallOptions(IZ)I

    move-result p0

    return p0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 31

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v0, p0

    .line 1293
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object/from16 p0, v0

    move/from16 v0, p21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public steSetNetId(II)I
    .locals 0

    .line 1352
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetNetId(II)I

    move-result p0

    return p0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 0

    .line 1382
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSetRtcpOnCall(III)I

    move-result p0

    return p0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 0

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steSetRtcpTimeout(IJ)I

    move-result p0

    return p0
.end method

.method public steSetSessionId(II)I
    .locals 0

    .line 1357
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->steSetSessionId(II)I

    move-result p0

    return p0
.end method

.method public steStartChannel(IIZ)I
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->steStartChannel(IIZ)I

    move-result p0

    return p0
.end method

.method public steStopChannel(I)I
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->steStopChannel(I)I

    move-result p0

    return p0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 9

    move-object v0, p0

    .line 1342
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public steUpdateSendCodec(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 31

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move-object/from16 v0, p0

    .line 1308
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object/from16 p0, v0

    move/from16 v0, p21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v30}, Lcom/sec/sve/SecVideoEngineManager;->steUpdateSendCodec(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public stopCamera(I)V
    .locals 0

    .line 455
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopCamera: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 460
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopCamera()V

    return-void
.end method

.method public stopEmoji(II)V
    .locals 0

    .line 520
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p2}, Lcom/sec/sve/SecVideoEngineManager;->stopEmoji(I)V

    return-void
.end method

.method public stopLocalRingBackTone()I
    .locals 1

    .line 1243
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mRingBackToneHandler:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$RingBackToneHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public stopRecord(II)V
    .locals 0

    .line 505
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopRecord: can\'t find UserAgent for mmtel-video."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopRecord(I)V

    return-void
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-wide/from16 v17, p16

    move-object/from16 v19, p18

    .line 1063
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sveCmcRecorderCreate maxFileSize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p7

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", fileSizeInterval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p16

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v1 .. v19}, Lcom/sec/sve/SecVideoEngineManager;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public sveCreateChannel()I
    .locals 0

    .line 941
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->sveCreateChannel()I

    move-result p0

    return p0
.end method

.method public sveGetLastPlayedVideoTime(I)Ljava/lang/Object;
    .locals 0

    .line 1010
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public sveGetRtcpTimeInfo(I)Ljava/lang/Object;
    .locals 0

    .line 1030
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0

    return-object p0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 7

    .line 1056
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public sveRecorderDelete(I)I
    .locals 0

    .line 1072
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderDelete(I)I

    move-result p0

    return p0
.end method

.method public sveRecorderStart(I)I
    .locals 0

    .line 1077
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderStart(I)I

    move-result p0

    return p0
.end method

.method public sveRecorderStop(IZ)I
    .locals 0

    .line 1082
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveRecorderStop(IZ)I

    move-result p0

    return p0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 0

    .line 1025
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 27

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    move-object/from16 v0, p0

    .line 969
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual/range {v0 .. v26}, Lcom/sec/sve/SecVideoEngineManager;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0

    return v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I
    .locals 11

    move-object v0, p0

    .line 958
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/sec/sve/SecVideoEngineManager;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I

    move-result v0

    return v0
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sveSetHeldInfo(IZZ)I

    move-result p0

    return p0
.end method

.method public sveSetMediaConfig(IZIZIII)I
    .locals 8

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/sec/sve/SecVideoEngineManager;->sveSetMediaConfig(IZIZIII)I

    move-result p0

    return p0
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 0

    .line 1020
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/sve/SecVideoEngineManager;->sveSetNetworkQoS(IIII)I

    move-result p0

    return p0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 14

    move-object v0, p0

    .line 981
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v0 .. v13}, Lcom/sec/sve/SecVideoEngineManager;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0

    return v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 0

    .line 1015
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveSetVideoPlayDelay(II)I

    move-result p0

    return p0
.end method

.method public sveStartCamera(II)I
    .locals 1

    const/16 v0, 0x190

    .line 993
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public sveStartChannel(III)I
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sveStartChannel(III)I

    move-result p0

    return p0
.end method

.method public sveStartRecording(II)I
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sveStartRecording(II)I

    move-result p0

    return p0
.end method

.method public sveStopCamera()I
    .locals 1

    const/16 v0, 0x191

    .line 999
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x0

    return p0
.end method

.method public sveStopChannel(I)I
    .locals 0

    .line 951
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStopChannel(I)I

    move-result p0

    return p0
.end method

.method public sveStopRecording(I)I
    .locals 0

    .line 1040
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sveStopRecording(I)I

    move-result p0

    return p0
.end method

.method public switchCamera()V
    .locals 0

    .line 480
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->switchCamera()V

    return-void
.end method

.method public triggerTone(ZII)V
    .locals 3

    .line 1105
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v0, :cond_0

    .line 1106
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ToneGenerator was not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1110
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tone #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v2, " start"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "stop"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_2

    const/16 v0, 0xf

    if-le p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    :cond_3
    if-eqz p1, :cond_4

    .line 1117
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p0, p2, p3}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_1

    .line 1119
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {p0}, Landroid/media/ToneGenerator;->stopTone()V

    :goto_1
    return-void
.end method

.method public unregisterMediaEventListener()V
    .locals 1

    .line 1265
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->mMediaEventlistener:Lcom/sec/sve/IImsMediaEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/sve/SecVideoEngineManager;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V

    return-void
.end method
