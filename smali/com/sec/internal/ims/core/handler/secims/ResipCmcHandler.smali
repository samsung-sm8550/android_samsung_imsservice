.class public Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;
.super Lcom/sec/internal/ims/core/handler/CmcHandler;
.source "ResipCmcHandler.java"


# static fields
.field private static final EVENT_CMC_RECORD_EVENT:I = 0x12f

.field private static final EVENT_CONNECT_TO_SVE:I = 0x12c

.field private static final EVENT_DISCONNECT_TO_SVE:I = 0x12e

.field private static final EVENT_SIP_INCOMING_MESSAGE:I = 0x64

.field private static final EVENT_SIP_OUTGOING_MESSAGE:I = 0xc8

.field private static final EVENT_SVE_CONNECTED:I = 0x12d

.field private static final NOTIFY_RECORD_START_FAILURE:I = 0x33

.field private static final NOTIFY_RECORD_START_FAILURE_NO_MEMORY:I = 0x34

.field private static final NOTIFY_RECORD_START_SUCCESS:I = 0x32

.field private static final NOTIFY_RECORD_STOP_FAILURE:I = 0x3d

.field private static final NOTIFY_RECORD_STOP_NO_MEMORY:I = 0x3e

.field private static final NOTIFY_RECORD_STOP_SUCCESS:I = 0x3c

.field public static final NOTIFY_RELAY_MEDIA_PAUSE:I = 0x4

.field public static final NOTIFY_RELAY_MEDIA_RESUME:I = 0x3

.field public static final NOTIFY_RELAY_MEDIA_START:I = 0x1

.field public static final NOTIFY_RELAY_MEDIA_STOP:I = 0x2


# instance fields
.field private mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

.field private mCmcRecordingCh:I

.field private mCmcRegiPhoneId:I

.field private mContext:Landroid/content/Context;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

.field private final mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field private mSveConnected:Z

.field private mSveConnecting:Z

.field private mSveManager:Lcom/sec/sve/SecVideoEngineManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmStackIf(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/ims/core/handler/secims/StackIF;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSveConnected(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSveConnecting(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mneedToReconnect(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->needToReconnect()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/CmcHandler;-><init>(Landroid/os/Looper;)V

    .line 50
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    .line 51
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    .line 53
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    const/4 p1, -0x1

    .line 54
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    .line 55
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRecordingCh:I

    .line 57
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$1;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

    .line 130
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 132
    new-instance p1, Lcom/sec/sve/SecVideoEngineManager;

    new-instance p3, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler$2;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)V

    invoke-direct {p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;-><init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Lcom/sec/internal/helper/RegistrantList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method private connectToSve()V
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is not connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->connectService()V

    const/4 v0, 0x1

    .line 249
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    :cond_0
    return-void
.end method

.method private disconnectToSve()V
    .locals 3

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SVE is connected ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disconnectToSve"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Lcom/sec/sve/SecVideoEngineManager;->disconnectService()V

    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    .line 259
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    :cond_1
    return-void
.end method

.method private getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 4

    .line 334
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 337
    const-string v0, "mmtel"

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    .line 338
    array-length p1, p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 342
    :cond_0
    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    if-nez v2, :cond_1

    goto :goto_1

    .line 347
    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 348
    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object v2

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private needToReconnect()Z
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    if-gt v2, v0, :cond_2

    .line 201
    iget v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 202
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private onCmcRecordEvent(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 5

    .line 273
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;

    .line 274
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;->phoneId()J

    move-result-wide v0

    long-to-int v0, v0

    .line 275
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;->session()J

    move-result-wide v1

    long-to-int v1, v1

    .line 276
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NotifyCmcRecordEventData;->event()J

    move-result-wide v2

    long-to-int p1, v2

    .line 278
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCmcRecordEvent() session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    .line 281
    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setPhoneId(I)V

    .line 282
    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    const/16 v0, 0x32

    if-ne p1, v0, :cond_0

    const/16 p1, 0xa

    .line 285
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    const/16 p1, 0xb

    .line 287
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    goto :goto_0

    .line 289
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setCmcRecordingEvent(I)V

    .line 292
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private onSveConnected()V
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->registerCmcMediaEventListener()V

    .line 266
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onSveConnected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SVE was not connected!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->onCmcRecordEvent(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 222
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->disconnectToSve()V

    goto :goto_0

    .line 218
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->onSveConnected()V

    goto :goto_0

    .line 214
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->connectToSve()V

    goto :goto_0

    .line 235
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 156
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 158
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x12f

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerCmcRecordEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRawSipIncomingEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerRawSipOutgoingEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnected:Z

    .line 164
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveConnecting:Z

    const/4 v0, -0x1

    .line 165
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    return-void
.end method

.method public registerCmcMediaEventListener()V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/sve/SecVideoEngineManager;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    return-void
.end method

.method public registerForIncomingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 170
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mRawSipIncomingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForOutgoingMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mRawSipOutgoingRegistrantList:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public sendConnectToSve(I)V
    .locals 0

    .line 179
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRegiPhoneId:I

    const/16 p1, 0x12c

    .line 180
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public sendDisonnectToSve()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->needToReconnect()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x12e

    .line 185
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->sendRtpStatsToStack(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;)V

    return-void
.end method

.method public sreCreateRelayChannel(II)I
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreCreateRelayChannel(II)I

    move-result p0

    return p0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 15

    move-object v0, p0

    .line 388
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/sec/sve/SecVideoEngineManager;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v0

    return v0
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreDeleteRelayChannel(I)I

    move-result p0

    return p0
.end method

.method public sreDeleteStream(I)I
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreDeleteStream(I)I

    move-result p0

    return p0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 6

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->sreEnableSRTP(III[BI)I

    move-result p0

    return p0
.end method

.method public sreGetMdmn(I)Z
    .locals 0

    .line 376
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreGetMdmn(I)Z

    move-result p0

    return p0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->sreGetVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreHoldRelayChannel(I)I

    move-result p0

    return p0
.end method

.method public sreHoldRelaySession(I)I
    .locals 2

    .line 432
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    const/16 v1, 0xa

    .line 433
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 434
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sreInitialize()V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0}, Lcom/sec/sve/SecVideoEngineManager;->sreInitialize()V

    return-void
.end method

.method public sreResumeRelayChannel(I)I
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreResumeRelayChannel(I)I

    move-result p0

    return p0
.end method

.method public sreResumeRelaySession(I)I
    .locals 2

    .line 442
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    const/16 v1, 0xb

    .line 443
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 444
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 32

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

    move/from16 v31, p31

    move-object/from16 v0, p0

    .line 505
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move-object/from16 p0, v0

    move/from16 v0, p21

    int-to-short v0, v0

    move/from16 v21, v0

    move/from16 v0, p22

    int-to-short v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v31}, Lcom/sec/sve/SecVideoEngineManager;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 9

    move-object v0, p0

    .line 468
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0

    return v0
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 7

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sreSetDtmfCodecInfo(IIIIII)I

    move-result p0

    return p0
.end method

.method public sreSetMdmn(IZ)I
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreSetMdmn(IZ)I

    move-result p0

    return p0
.end method

.method public sreSetNetId(IJ)I
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sreSetNetId(IJ)I

    move-result p0

    return p0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 6

    .line 479
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtcpOnCall(IIIII)I

    move-result p0

    return p0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtcpTimeout(II)I

    move-result p0

    return p0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 7

    .line 494
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtcpXr(IIIII[I)I

    move-result p0

    return p0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreSetRtpTimeout(II)I

    move-result p0

    return p0
.end method

.method public sreStartRecording(I)I
    .locals 2

    .line 520
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;-><init>()V

    const/16 v1, 0xc

    .line 521
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setRelayStreamEvent(I)V

    .line 522
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->setSessionID(I)V

    .line 524
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/CmcHandler;->mCmcMediaEventRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public sreStartRecordingChannel(III)I
    .locals 0

    .line 529
    iput p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRecordingCh:I

    .line 530
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sreStartRecording(III)I

    move-result p0

    return p0
.end method

.method public sreStartRelayChannel(II)I
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreStartRelayChannel(II)I

    move-result p0

    return p0
.end method

.method public sreStartStream(III)I
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/sve/SecVideoEngineManager;->sreStartStream(III)I

    move-result p0

    return p0
.end method

.method public sreStopRecording(I)I
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcRecordingCh:I

    invoke-virtual {v0, p1, p0}, Lcom/sec/sve/SecVideoEngineManager;->sreStopRecording(II)I

    move-result p0

    return p0
.end method

.method public sreStopRelayChannel(I)I
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreStopRelayChannel(I)I

    move-result p0

    return p0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 0

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/sve/SecVideoEngineManager;->sreUpdateRelayChannel(II)I

    move-result p0

    return p0
.end method

.method public sreUpdateStream(I)I
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {p0, p1}, Lcom/sec/sve/SecVideoEngineManager;->sreUpdateStream(I)I

    move-result p0

    return p0
.end method

.method public startCmcRecord(IIIIJILjava/lang/String;IIIIIJLjava/lang/String;)Z
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x1

    move/from16 v2, p1

    .line 308
    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    if-nez v2, :cond_0

    .line 310
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCmcRecord: can\'t find UserAgent for cmc."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-wide/from16 v15, p14

    move-object/from16 v17, p16

    .line 314
    invoke-virtual/range {v2 .. v17}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->startCmcRecord(IIIJILjava/lang/String;IIIIIJLjava/lang/String;)V

    return v1
.end method

.method public stopCmcRecord(II)Z
    .locals 1

    const/4 v0, 0x1

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->getUaByCmcType(II)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 325
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopCmcRecord: can\'t find UserAgent for cmc."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 328
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->stopRecord(I)V

    return v0
.end method

.method public unregisterCmcMediaEventListener()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mSveManager:Lcom/sec/sve/SecVideoEngineManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipCmcHandler;->mCmcMediaEventlistener:Lcom/sec/sve/ICmcMediaEventListener;

    invoke-virtual {v0, p0}, Lcom/sec/sve/SecVideoEngineManager;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V

    return-void
.end method
