.class public Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;
.super Lcom/sec/internal/ims/core/handler/PresenceHandler;
.source "ResipPresenceHandler.java"


# static fields
.field public static final EVENT_PRESENCE_NOTIFY:I = 0x67

.field public static final EVENT_PRESENCE_PUBLISH_RESPONSE:I = 0x65

.field public static final EVENT_PRESENCE_SUBSCRIBE_RESPONSE:I = 0x66

.field private static final LOG_TAG:Ljava/lang/String; = "ResipPresenceHandler"


# instance fields
.field protected mCallbackMessageToSubscriptionId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

.field private mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

.field protected final mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

.field protected mRequestCallbackMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

.field protected mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/PresenceHandler;-><init>(Landroid/os/Looper;)V

    .line 73
    sget-object p1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    .line 78
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 79
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 81
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 90
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    .line 91
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    .line 92
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    .line 93
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    return-void
.end method

.method private callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 189
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "callbackPresenceResponse() : callback found"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 190
    invoke-static {v0, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 193
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "callbackPresenceResponse() : cannot find callback"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
    .locals 7

    .line 198
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;

    .line 199
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object p0

    .line 200
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v0

    :cond_0
    move v6, v0

    .line 204
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->result()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 205
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->sipError()J

    move-result-wide v0

    long-to-int v3, v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/GeneralResponse;->errorStr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    return-object p0
.end method

.method private getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 131
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 126
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method private handleNewPresenceInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 21

    move-object/from16 v0, p0

    .line 298
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;

    .line 299
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->handle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v2

    .line 300
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v3

    .line 304
    :cond_0
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;-><init>(ILjava/lang/String;)V

    .line 305
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->contactInfoLength()I

    move-result v4

    .line 306
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNewPresenceInfo(): subscriptionID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNewPresenceInfo(): contactinfo size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_13

    .line 309
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->contactInfo(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;

    move-result-object v7

    if-nez v7, :cond_1

    .line 311
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "contact info is null for index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v3, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move/from16 v20, v6

    const/4 v6, 0x0

    goto/16 :goto_c

    .line 314
    :cond_1
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->serviceStatusLength()I

    move-result v8

    .line 315
    new-instance v9, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v9, v3}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 316
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->uri()Ljava/lang/String;

    move-result-object v10

    .line 317
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->entityUri()Ljava/lang/String;

    move-result-object v11

    .line 318
    sget-object v12, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "handleNewPresenceInfo(): entity uri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", contact uri = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v9, v10}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 321
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 322
    const-string v13, "handleNewPresenceInfo: set TelUri from entity"

    invoke-static {v12, v3, v13}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    invoke-virtual {v9, v11}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    goto :goto_1

    .line 325
    :cond_2
    invoke-virtual {v9, v10}, Lcom/sec/ims/presence/PresenceInfo;->setTelUri(Ljava/lang/String;)V

    .line 327
    :goto_1
    invoke-virtual {v9, v3}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 328
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/sec/ims/presence/PresenceInfo;->setSubscriptionId(Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v8, :cond_7

    .line 330
    invoke-virtual {v7, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->serviceStatus(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 332
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->mediaCapabilitiesLength()I

    move-result v13

    .line 333
    new-array v15, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_3

    .line 335
    invoke-virtual {v12, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->mediaCapabilities(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 338
    :cond_3
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->serviceId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->version()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v15}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v13

    if-nez v13, :cond_4

    .line 341
    new-instance v13, Lcom/sec/ims/presence/ServiceTuple;

    sget v14, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    move/from16 v20, v6

    int-to-long v5, v14

    .line 342
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->serviceId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->version()Ljava/lang/String;

    move-result-object v18

    move-object v14, v13

    move-object/from16 v19, v15

    move-wide v15, v5

    invoke-direct/range {v14 .. v19}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move/from16 v20, v6

    .line 344
    :goto_4
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string v5, ""

    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 345
    invoke-virtual {v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/PresenceServiceStatus;->status()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v13, Lcom/sec/ims/presence/ServiceTuple;->basicStatus:Ljava/lang/String;

    goto :goto_5

    .line 347
    :cond_5
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleNewPresenceInfo(): status is null"

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    :goto_5
    invoke-virtual {v9, v13}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 350
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "handleNewPresenceInfo(): "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Lcom/sec/ims/presence/ServiceTuple;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_6

    :cond_6
    move/from16 v20, v6

    :goto_6
    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v20

    goto/16 :goto_2

    :cond_7
    move/from16 v20, v6

    .line 353
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 354
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPidf(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->rawPidf()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->addPidfXmls(Ljava/lang/String;)V

    goto :goto_7

    .line 357
    :cond_8
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v6, "handleNewPresenceInfo(): empty pidf"

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    :goto_7
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNewPresenceInfo: state - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", state reason - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 365
    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    :try_start_0
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 369
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionState;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 370
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_11

    .line 371
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v2, v10, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->addUriTerminatedReason(Landroid/net/Uri;Ljava/lang/String;)V

    const/4 v10, 0x6

    .line 373
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 374
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_a

    .line 375
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    :cond_9
    :goto_8
    const/4 v6, 0x0

    goto/16 :goto_b

    :catch_0
    const/4 v6, 0x0

    goto/16 :goto_a

    .line 377
    :cond_a
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_8

    :cond_b
    const/4 v10, 0x3

    .line 379
    invoke-static {v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 380
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_c

    .line 381
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_8

    .line 382
    :cond_c
    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_d

    .line 383
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v6, v6

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :cond_d
    const/4 v5, 0x0

    .line 385
    :try_start_1
    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move v6, v5

    goto :goto_a

    :cond_e
    const/4 v8, 0x1

    .line 387
    :try_start_2
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x5

    .line 388
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    const/4 v8, 0x2

    .line 389
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/SubscriptionFailureReason;->name(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    :cond_f
    const/4 v6, 0x0

    goto :goto_9

    .line 392
    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNewPresenceInfo: state failure reason - "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ContactInfo;->subscriptionFailureReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_8

    .line 390
    :goto_9
    :try_start_3
    invoke-virtual {v9, v6}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    goto :goto_b

    :cond_11
    const/4 v6, 0x0

    .line 395
    const-string v7, "handleNewPresenceInfo: no reason"

    invoke-static {v5, v3, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 397
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v10, v7

    invoke-direct {v5, v10, v11, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    .line 402
    :catch_2
    :goto_a
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v7, "State or Reason is not understandable."

    invoke-static {v5, v3, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    :cond_12
    :goto_b
    iget-object v5, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {v5, v9}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    :goto_c
    add-int/lit8 v5, v20, 0x1

    move v6, v5

    goto/16 :goto_0

    .line 407
    :cond_13
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->setSubscriptionState(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/NewPresenceInfo;->subscriptionStateReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->setSubscriptionStateReason(Ljava/lang/String;)V

    .line 409
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private handleNotify(Landroid/os/Message;)V
    .locals 2

    .line 210
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;

    .line 211
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 232
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_NOTIFY_STATUS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNotifyStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 220
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_SUBSCRIBE_STATUS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleSubscribeStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 217
    :pswitch_2
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(), NOTIFY_PRESENCE_UNPUBLISH_STATUS, just ignore..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :pswitch_3
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_PUBLISH_STATUS."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handlePublishStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 228
    :pswitch_4
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleNotify(), EVENT_PRESENCE_SUBSCRIBE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNewPresenceInfo(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32c9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleNotifyStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 4

    .line 279
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;

    .line 280
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 281
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    .line 286
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->isSuccess()Z

    move-result v2

    .line 287
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->subscribeTerminatedReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceNotifyStatus;->subscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, v3, p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZLjava/lang/String;Ljava/lang/String;I)V

    .line 289
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNotifyStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private handlePublishResponse(Landroid/os/Message;)V
    .locals 4

    .line 157
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePublishResponse() isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    const-string v2, "handlePublishResponse(): "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private handlePublishStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 14

    .line 237
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;

    .line 238
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    :cond_0
    move v13, v1

    .line 243
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->isSuccess()Z

    move-result v3

    .line 244
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->sipErrorCode()J

    move-result-wide v1

    long-to-int v4, v1

    .line 245
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->sipErrorPhrase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->minExpires()J

    move-result-wide v1

    long-to-int v6, v1

    .line 246
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->etag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->remoteExpires()J

    move-result-wide v8

    .line 247
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->isRefresh()Z

    move-result v10

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresencePublishStatus;->retryAfter()J

    move-result-wide v11

    move-object v2, v0

    invoke-direct/range {v2 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;-><init>(ZILjava/lang/String;ILjava/lang/String;JZJI)V

    .line 248
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePublishStatusUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/Registrant;->notifyResult(Ljava/lang/Object;)V

    return-void
.end method

.method private handleSubscribeResponse(Landroid/os/Message;)V
    .locals 4

    .line 171
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getPresenceResponse(Landroid/os/Message;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubscribeResponse() isSuccess = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 174
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    .line 175
    const-string v3, "handleSubscribeResponse(): "

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->callbackPresenceResponse(Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private handleSubscribeStatusUpdate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 8

    .line 254
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;

    .line 255
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->handle()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    .line 256
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getPhoneId()I

    move-result v1

    .line 260
    :cond_0
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->isSuccess()Z

    move-result v3

    .line 261
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->sipErrorCode()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->sipErrorPhrase()Ljava/lang/String;

    move-result-object v5

    .line 262
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->minExpires()J

    move-result-wide v6

    long-to-int v6, v6

    move-object v2, v0

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    .line 264
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSubscribeStatusUpdate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 266
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/PresenceSubscribeStatus;->subscriptionId()Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_1

    const/4 p0, 0x0

    .line 270
    invoke-static {v3, v0, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 271
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 273
    :cond_1
    const-string p0, "handleSubscribeStatusUpdate: no call back"

    invoke-static {v2, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_NOTIFY."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleNotify(Landroid/os/Message;)V

    goto :goto_0

    .line 142
    :pswitch_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_SUBSCRIBE_RESPONSE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handleSubscribeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 138
    :pswitch_2
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleMessage(), EVENT_PRESENCE_PUBLISH_RESPONSE."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->handlePublishResponse(Landroid/os/Message;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 99
    invoke-super {p0}, Lcom/sec/internal/ims/core/handler/BaseHandler;->init()V

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    const/16 v1, 0x67

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerPresenceEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V
    .locals 4

    .line 107
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "presence publish:"

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    const-string/jumbo v1, "presence"

    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 111
    const-string/jumbo p0, "publish: UserAgent not found."

    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "presence publish: handle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 117
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mMno:Lcom/sec/internal/constants/Mno;

    const/16 p3, 0x65

    .line 119
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-virtual {v1, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->requestPublish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;)V

    return-void
.end method

.method public registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 414
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 424
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyInfoRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 429
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceNotifyStatusRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 419
    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPublishResponseRegistrant:Lcom/sec/internal/helper/Registrant;

    return-void
.end method

.method public subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V
    .locals 7

    .line 452
    const-string/jumbo v0, "presence"

    invoke-direct {p0, v0, p5}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 454
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "subscribe: UserAgent not found."

    invoke-static {p0, p5, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 458
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "subscribe: subscription id ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p5, 0x66

    .line 459
    invoke-virtual {p0, p5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 460
    iget-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {p5, v6, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {p5, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    iget-object p5, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {p5, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    move-object v3, p1

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribe(ILcom/sec/ims/util/ImsUri;ZLjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .line 435
    const-string/jumbo v3, "presence"

    invoke-direct {p0, v3, p7}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 437
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeList: UserAgent not found"

    invoke-static {v0, p7, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 441
    :cond_0
    sget-object v5, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subscribeList: subscription id ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p7, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x66

    .line 442
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 443
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mRequestCallbackMessages:Ljava/util/HashMap;

    invoke-virtual {v2, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mSubscriptionIdToCallbackMessage:Ljava/util/HashMap;

    invoke-virtual {v2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mCallbackMessageToSubscriptionId:Ljava/util/HashMap;

    invoke-virtual {v2, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    move-object v2, p1

    move v3, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->requestSubscribeList(ILjava/util/List;ZLjava/lang/String;ZILandroid/os/Message;)V

    return-void
.end method

.method public unpublish(I)V
    .locals 3

    .line 468
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "presence unpublish:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 470
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->getUa(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 473
    const-string/jumbo v1, "unpublish: UserAgent not found. UserAgent already was de-registerd"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mPresenceServiceHandles:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void

    .line 477
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "presence unpublish: handle = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 481
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->requestUnpublish()V

    return-void
.end method

.method public updateServiceVersion(ILjava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 486
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "presence updateServiceVersion:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipPresenceHandler;->mStackIf:Lcom/sec/internal/ims/core/handler/secims/StackIF;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->updateServiceVersion(ILjava/util/HashMap;)V

    return-void
.end method
