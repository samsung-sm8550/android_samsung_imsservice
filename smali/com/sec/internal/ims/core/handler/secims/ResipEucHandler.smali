.class public Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;
.super Lcom/sec/internal/ims/core/handler/EucHandler;
.source "ResipEucHandler.java"


# static fields
.field private static final EVENT_SEND_RESPONSE:I = 0x1

.field private static final EVENT_SEND_RESPONSE_DONE:I = 0xa

.field private static final EVENT_STACK_NOTIFY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "ResipEucHandler"


# instance fields
.field private final mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

.field private final mEucResponseStatusTranslator:Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

.field private final mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

.field private final mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field private final mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 86
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/EucHandler;-><init>(Landroid/os/Looper;)V

    .line 70
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 71
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 72
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 73
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 74
    new-instance p1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {p1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 87
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-direct {p2}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    .line 91
    new-instance p2, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-direct {p2}, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    .line 92
    new-instance p2, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {p2}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    .line 93
    new-instance p2, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {p2}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    .line 94
    new-instance p2, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-direct {p2}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    .line 95
    new-instance p2, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    invoke-direct {p2}, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mEucResponseStatusTranslator:Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    const/16 p2, 0x64

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerEucrEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 373
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 374
    const-string v0, "euc"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private handleAckMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 2

    .line 192
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAckMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    if-nez p1, :cond_0

    .line 197
    const-string p0, "Invalid message, ignoring!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    move-result-object p1

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message, ignoring! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleNotificationMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 2

    .line 211
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotificationMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    if-nez p1, :cond_0

    .line 217
    const-string p0, "Invalid message, ignoring!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 227
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message, ignoring! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 2

    .line 122
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    .line 123
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Invalid notify, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;

    .line 129
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 146
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected notify id, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleSystemMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    goto :goto_0

    .line 140
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleNotificationMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleAckMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    goto :goto_0

    .line 134
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleVolatileMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    goto :goto_0

    .line 131
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handlePersistentMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x272e
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handlePersistentMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 2

    .line 151
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handlePersistentMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    if-nez p1, :cond_0

    .line 157
    const-string p0, "Invalid message, ignoring!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 167
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message, ignoring! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleSendResponseRequest(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V
    .locals 10

    .line 308
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_0

    .line 313
    const-string v1, "handleSendResponseRequest: EUC UserAgent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getCallback()Landroid/os/Message;

    move-result-object v0

    new-instance v7, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    .line 315
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v3

    .line 316
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    .line 317
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getOwnIdentity()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;->FAILURE_INTERNAL:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;)V

    .line 314
    invoke-direct {p0, v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    return-void

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getType()Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 330
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getValue()Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    invoke-virtual {v1, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 333
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 334
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getPin()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 335
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 337
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 338
    :cond_2
    const-string v5, ""

    .line 336
    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 340
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->startRequestEucSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 341
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v6

    int-to-long v8, v6

    invoke-static {v4, v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 342
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 343
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addPin(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 344
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addRemoteUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 345
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 346
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->addType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 347
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestEucSendResponse;->endRequestEucSendResponse(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 349
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 350
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x21c

    .line 351
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x24

    .line 352
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 353
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    const/16 v0, 0xa

    .line 356
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;->getCallback()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x21c

    move-object v2, p0

    .line 355
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendResponseResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;Landroid/os/Message;)V
    .locals 3

    .line 361
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendResponseResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mEucResponseStatusTranslator:Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/EucResponseStatusTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;)Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;

    move-result-object p1

    .line 366
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method private handleSystemMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 2

    .line 232
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSystemMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    if-nez p1, :cond_0

    .line 237
    const-string p0, "Invalid message, ignoring!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 247
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message, ignoring! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private handleVolatileMessage(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;)V
    .locals 2

    .line 172
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleVolatileMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage;->message(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;

    if-nez p1, :cond_0

    .line 177
    const-string p0, "Invalid message, ignoring!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    move-result-object p1

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message, ignoring! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 394
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 389
    invoke-static {p1, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 390
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    if-nez p5, :cond_0

    .line 382
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 385
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 103
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    .line 116
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message, ignoring!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Message;

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleSendResponseResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendEucResponseResponse;Landroid/os/Message;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->handleSendResponseRequest(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V

    :goto_0
    return-void
.end method

.method public registerForAckMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForNotificationMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForPersistentMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSystemMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForVolatileMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public sendEucResponse(Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData;)V
    .locals 1

    const/4 v0, 0x1

    .line 304
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterForAckMessage(Landroid/os/Handler;)V
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mAckMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNotificationMessage(Landroid/os/Handler;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mNotificationMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPersistentMessage(Landroid/os/Handler;)V
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mPersistentMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSystemMessage(Landroid/os/Handler;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mSystemMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVolatileMessage(Landroid/os/Handler;)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipEucHandler;->mVolatileMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
