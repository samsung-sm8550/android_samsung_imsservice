.class public Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;
.super Ljava/lang/Object;
.source "ParamOMAObject.java"


# instance fields
.field public CHIPLIST:Ljava/lang/String;

.field public CONTENT_DURATION:Ljava/lang/String;

.field public CONTENT_TYPE:Ljava/lang/String;

.field public CONTRIBUTION_ID:Ljava/lang/String;

.field public CONVERSATION_ID:Ljava/lang/String;

.field public DATE:Ljava/lang/String;

.field public DIRECTION:Ljava/lang/String;

.field public DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

.field public DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

.field public DISPOSITION_STATUS:Ljava/lang/String;

.field public EXTENDEDMESSAGING:Ljava/lang/String;

.field public EXTENDEDRCS:Ljava/lang/String;

.field public FROM:Ljava/lang/String;

.field public IMPORTANCE:Ljava/lang/String;

.field public IS_CPM_GROUP:Z

.field public IS_OPEN_GROUP:Z

.field public MESSAGEBODY:Ljava/lang/String;

.field public MESSAGE_ID:Ljava/lang/String;

.field public MULTIPARTCONTENTTYPE:Ljava/lang/String;

.field public PARTICIPATING_DEVICE:Ljava/lang/String;

.field public P_ASSERTED_SERVICE:Ljava/lang/String;

.field public SAFE_MESSAGE:I

.field public SENSITIVITY:Ljava/lang/String;

.field public SUBJECT:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field public TEXT_CONTENT:Ljava/lang/String;

.field public TO:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public TRAFFICTYPE:Ljava/lang/String;

.field public X_CNS_Greeting_Type:Ljava/lang/String;

.field public correlationId:Ljava/lang/String;

.field public correlationTag:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field public lastModSeq:Ljava/lang/Long;

.field public mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

.field public mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

.field public mImdnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

.field public mIsFromChangedObj:Z

.field public mIsGoforwardSync:Z

.field public mLine:Ljava/lang/String;

.field public mNomalizedOtherParticipants:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mObjectType:I

.field private mRawFromString:Ljava/lang/String;

.field public mReassembled:Z

.field private mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field public parentFolder:Ljava/net/URL;

.field public parentFolderPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

.field public payloadURL:Ljava/net/URL;

.field public protocol:Ljava/lang/String;

.field public resourceURL:Ljava/net/URL;

.field public sFlags:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/internal/omanetapi/nms/data/ChangedObject;ZILjava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 4

    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class v0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->protocol:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 62
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    .line 72
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->P_ASSERTED_SERVICE:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDRCS:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDMESSAGING:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CHIPLIST:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TRAFFICTYPE:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SAFE_MESSAGE:I

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    .line 378
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p5

    invoke-static {v2, p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    const/4 p5, 0x1

    .line 379
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 380
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    .line 381
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->parentFolder:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 382
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 383
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    if-eqz p2, :cond_0

    .line 385
    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 387
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->resourceURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 388
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    .line 389
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 390
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->lastModSeq:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    .line 391
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    .line 392
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->correlationTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 393
    const-string p2, "FT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/16 v0, 0xb

    if-eqz p2, :cond_1

    const/16 p2, 0xc

    .line 394
    iput p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 395
    :cond_1
    const-string p2, "CHAT"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 396
    iput v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 397
    :cond_2
    const-string p2, "GSO"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p2, 0x22

    .line 398
    iput p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto :goto_0

    .line 400
    :cond_3
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 402
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 403
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p3, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->message_time:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 404
    iget-object p3, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->direction:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 405
    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->reassembled:Ljava/lang/String;

    if-eqz p2, :cond_4

    const-string/jumbo p3, "true"

    .line 406
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move p5, v1

    .line 407
    :goto_1
    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 408
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 409
    const-string p2, "In"

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 410
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->sender:Ljava/lang/String;

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 411
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    array-length p3, p2

    move p4, v1

    :goto_2
    if-ge p4, p3, :cond_6

    aget-object p5, p2, p4

    .line 412
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object p5, p5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p5, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 415
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 416
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p2, p2, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

    array-length p3, p2

    move p4, v1

    :goto_3
    if-ge p4, p3, :cond_6

    aget-object p5, p2, p4

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    iget-object p5, p5, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;->uri:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p5, v3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 420
    :cond_6
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/ChangedObject;->extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;

    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;->content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;

    aget-object p1, p1, v1

    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 421
    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->content_type:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 422
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;->rcsdata:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;

    iget-object p2, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;->conversation_id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 423
    iget-object p1, p1, Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;->contribution_id:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 424
    iget p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    if-eq v0, p1, :cond_7

    const/16 p2, 0xe

    if-ne p2, p1, :cond_8

    .line 426
    :cond_7
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->updatePartcipantContentEmail()V

    .line 429
    :cond_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getNormalizedParticipantsExcludeOwn()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/omanetapi/nms/data/Object;ZILcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 3

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-class p4, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;

    invoke-virtual {p4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const/4 p4, 0x0

    .line 46
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->protocol:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    .line 62
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    .line 65
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    .line 71
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    .line 72
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    .line 76
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    .line 79
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    .line 80
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    .line 81
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->P_ASSERTED_SERVICE:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDRCS:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDMESSAGING:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CHIPLIST:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TRAFFICTYPE:Ljava/lang/String;

    .line 87
    iput v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SAFE_MESSAGE:I

    .line 89
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 90
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    .line 92
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    .line 93
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 153
    iput-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 154
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    .line 155
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {p4, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    .line 156
    iput-boolean p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    .line 157
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolder:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolder:Ljava/net/URL;

    .line 158
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->parentFolderPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->parentFolderPath:Ljava/lang/String;

    .line 159
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 160
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlagList:Lcom/sec/internal/omanetapi/nms/data/FlagList;

    if-eqz p2, :cond_0

    .line 162
    iget-object p2, p2, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    .line 164
    :cond_0
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

    if-eqz p2, :cond_1

    .line 166
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getCloudActionPerImdn(Lcom/sec/internal/omanetapi/nms/data/ImdnList;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mImdnList:Ljava/util/Map;

    .line 168
    :cond_1
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->resourceURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 169
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->path:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 170
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    goto :goto_0

    .line 172
    :cond_2
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->path:Ljava/lang/String;

    .line 174
    :goto_0
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadURL:Ljava/net/URL;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadURL:Ljava/net/URL;

    .line 175
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

    .line 176
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->lastModSeq:Ljava/lang/Long;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->lastModSeq:Ljava/lang/Long;

    .line 177
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    .line 178
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->correlationTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 179
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->protocol:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 180
    iget-object p2, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->protocol:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->protocol:Ljava/lang/String;

    .line 183
    :cond_3
    iput p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    .line 185
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    .line 188
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getLineTelUriFromObjUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    goto :goto_2

    .line 186
    :cond_5
    :goto_1
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 191
    :goto_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    move p3, v1

    .line 193
    :goto_3
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    array-length p5, p4

    if-ge p3, p5, :cond_26

    .line 194
    aget-object p4, p4, p3

    iget-object p5, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    if-eqz p5, :cond_25

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-nez p4, :cond_6

    goto/16 :goto_7

    .line 198
    :cond_6
    iget-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p4

    const-string v0, "$DATE"

    .line 199
    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 198
    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 200
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    goto/16 :goto_7

    .line 201
    :cond_7
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 202
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$IS$CPM$GROUP"

    .line 203
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 201
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    const-string/jumbo p5, "yes"

    if-eqz p4, :cond_8

    .line 204
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    goto/16 :goto_7

    .line 205
    :cond_8
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object v0

    const-string v2, "$IS$OPEN$GROUP"

    .line 206
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 205
    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_9

    .line 207
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    goto/16 :goto_7

    .line 208
    :cond_9
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 209
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$DIRECTION"

    .line 210
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 208
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_a

    .line 211
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    goto/16 :goto_7

    .line 212
    :cond_a
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 213
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$FROM"

    .line 214
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 212
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_b

    .line 215
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p4, p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 216
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    goto/16 :goto_7

    .line 217
    :cond_b
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 218
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$TO"

    .line 219
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 217
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 220
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz p4, :cond_25

    move p4, v1

    .line 221
    :goto_4
    iget-object p5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p5, p5, p3

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v0, p5

    if-ge p4, v0, :cond_25

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    aget-object p5, p5, p4

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p5, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 225
    :cond_c
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 226
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$CC"

    .line 227
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 225
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_d

    .line 228
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz p4, :cond_25

    move p4, v1

    .line 229
    :goto_5
    iget-object p5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p5, p5, p3

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v0, p5

    if-ge p4, v0, :cond_25

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    aget-object p5, p5, p4

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p5, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 233
    :cond_d
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 234
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$BCC"

    .line 235
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 233
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 236
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    if-eqz p4, :cond_25

    move p4, v1

    .line 237
    :goto_6
    iget-object p5, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p5, p5, p3

    iget-object p5, p5, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    array-length v0, p5

    if-ge p4, v0, :cond_25

    .line 238
    aget-object p5, p5, p4

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p5, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 241
    :cond_e
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 242
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$TEXT$CONTENT"

    .line 243
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 241
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_f

    .line 244
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    goto/16 :goto_7

    .line 245
    :cond_f
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 246
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$SUBJECT"

    .line 247
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 245
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_10

    .line 248
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    goto/16 :goto_7

    .line 249
    :cond_10
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 250
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$CONVERSATION$ID"

    .line 251
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 249
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_11

    .line 252
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONVERSATION_ID:Ljava/lang/String;

    goto/16 :goto_7

    .line 253
    :cond_11
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 254
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$CONTRIBUTION$ID"

    .line 255
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 253
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_12

    .line 256
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTRIBUTION_ID:Ljava/lang/String;

    goto/16 :goto_7

    .line 257
    :cond_12
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 258
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$DISPOSITION$STATUS"

    .line 259
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 257
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_13

    .line 260
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    goto/16 :goto_7

    .line 261
    :cond_13
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 262
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$DISPOSITION$ORIGINAL$TO"

    .line 263
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 261
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_14

    .line 264
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {p4, p5}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_TO:Ljava/lang/String;

    goto/16 :goto_7

    .line 265
    :cond_14
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 266
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$DISPOSITION$ORIGINAL$MESSAGEID"

    .line 267
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 265
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_15

    .line 268
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_ORIGINAL_MESSAGEID:Ljava/lang/String;

    goto/16 :goto_7

    .line 269
    :cond_15
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 270
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$MULTIPARTCONTENTTYPE"

    .line 271
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 269
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_16

    .line 272
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MULTIPARTCONTENTTYPE:Ljava/lang/String;

    goto/16 :goto_7

    .line 273
    :cond_16
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 274
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$CONTENT$TYPE"

    .line 275
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 273
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_17

    .line 276
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    goto/16 :goto_7

    .line 277
    :cond_17
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 278
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$MESSAGE$ID"

    .line 279
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 277
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_18

    .line 280
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    goto/16 :goto_7

    .line 281
    :cond_18
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 282
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$CONTENT$DURATION"

    .line 283
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 281
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_19

    .line 284
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_DURATION:Ljava/lang/String;

    goto/16 :goto_7

    .line 285
    :cond_19
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 286
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$PARTICIPATING$DEVICE"

    .line 287
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 285
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1a

    .line 288
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->PARTICIPATING_DEVICE:Ljava/lang/String;

    goto/16 :goto_7

    .line 289
    :cond_1a
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 290
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$X$CNS$GREETING$TYPE"

    .line 291
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 289
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1b

    .line 292
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    goto/16 :goto_7

    .line 293
    :cond_1b
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 294
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$MESSAGE$CONTEXT"

    .line 295
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 293
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1c

    .line 296
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    invoke-direct {p0, p4}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getMessageContextType(Ljava/lang/String;)I

    move-result p4

    iput p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    goto/16 :goto_7

    .line 297
    :cond_1c
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 298
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$IMPORTANCE"

    .line 299
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 297
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1d

    .line 300
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->importance:Ljava/lang/String;

    .line 301
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    goto/16 :goto_7

    .line 302
    :cond_1d
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 303
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$SENSITIVITY"

    .line 304
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 302
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1e

    .line 305
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->sensitivity:Ljava/lang/String;

    .line 306
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    goto/16 :goto_7

    .line 307
    :cond_1e
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 308
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$P$ASSERTED$SERVICE"

    .line 309
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 307
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1f

    .line 310
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->P_ASSERTED_SERVICE:Ljava/lang/String;

    goto/16 :goto_7

    .line 311
    :cond_1f
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 312
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$MESSAGEBODY"

    .line 313
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 311
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_20

    .line 314
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    goto/16 :goto_7

    .line 315
    :cond_20
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 316
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$EXTENDED$RCS"

    .line 317
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 315
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_21

    .line 318
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDRCS:Ljava/lang/String;

    goto/16 :goto_7

    .line 319
    :cond_21
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 320
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$EXTENDED$MESSAGING"

    .line 321
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 319
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_22

    .line 322
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->EXTENDEDMESSAGING:Ljava/lang/String;

    goto/16 :goto_7

    .line 323
    :cond_22
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 324
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$CHIPLIST"

    .line 325
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 323
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_23

    .line 326
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CHIPLIST:Ljava/lang/String;

    goto :goto_7

    .line 327
    :cond_23
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 328
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$TRAFFICTYPE"

    .line 329
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 327
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_24

    .line 330
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TRAFFICTYPE:Ljava/lang/String;

    goto :goto_7

    .line 331
    :cond_24
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->name:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 332
    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMessageAttributeRegistration()Ljava/util/Map;

    move-result-object p5

    const-string v0, "$SAFETY"

    .line 333
    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 331
    invoke-virtual {p4, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_25

    .line 334
    iget-object p4, p1, Lcom/sec/internal/omanetapi/nms/data/Object;->attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/AttributeList;->attribute:[Lcom/sec/internal/omanetapi/nms/data/Attribute;

    aget-object p4, p4, p3

    iget-object p4, p4, Lcom/sec/internal/omanetapi/nms/data/Attribute;->value:[Ljava/lang/String;

    aget-object p4, p4, v1

    const-string/jumbo p5, "true"

    invoke-virtual {p5, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    iput p4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SAFE_MESSAGE:I

    :cond_25
    :goto_7
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_3

    .line 338
    :cond_26
    const-string p1, "Out"

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_27

    .line 339
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 342
    :cond_27
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldCorrectShortCode()Z

    move-result p1

    if-eqz p1, :cond_28

    .line 343
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->recalculateCorrelationTag()V

    .line 346
    :cond_28
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    instance-of p1, p1, Lcom/sec/internal/ims/cmstore/strategy/KorCmStrategy;

    if-nez p1, :cond_2a

    .line 347
    iget p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    const/16 p2, 0xb

    if-eq p2, p1, :cond_29

    const/16 p2, 0xe

    if-ne p2, p1, :cond_2a

    .line 349
    :cond_29
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->updatePartcipantContentEmail()V

    .line 351
    :cond_2a
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->getNormalizedParticipantsExcludeOwn()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    return-void
.end method

.method private getCloudActionPerFlag(Lcom/sec/internal/omanetapi/nms/data/FlagList;)Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;
    .locals 5

    .line 100
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Insert:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    if-eqz p1, :cond_8

    .line 101
    iget-object v1, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCloudActionPerFlag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    const-string v1, "\\Seen"

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    .line 107
    :goto_0
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 108
    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    if-le v3, v4, :cond_2

    move-object v0, p0

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    :cond_3
    :goto_2
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    array-length v3, p0

    if-ge v2, v3, :cond_7

    .line 117
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->None:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 118
    aget-object p0, p0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 119
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Update:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    goto :goto_3

    .line 120
    :cond_4
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/FlagList;->flag:[Ljava/lang/String;

    aget-object p0, p0, v2

    const-string v4, "\\Deleted"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 121
    sget-object v3, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 123
    :cond_5
    :goto_3
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result p0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->getId()I

    move-result v4

    if-le p0, v4, :cond_6

    move-object v0, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v0

    .line 102
    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const-string p1, "Null Flags"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getCloudActionPerImdn(Lcom/sec/internal/omanetapi/nms/data/ImdnList;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/omanetapi/nms/data/ImdnList;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 132
    iget-object p0, p1, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    if-eqz p0, :cond_4

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_3

    .line 135
    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 137
    iget-object p1, p1, Lcom/sec/internal/omanetapi/nms/data/ImdnList;->imdn:[Lcom/sec/internal/omanetapi/nms/data/ImdnObject;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 138
    iget-object v4, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->originalTo:Ljava/lang/String;

    .line 139
    iget-object v3, v3, Lcom/sec/internal/omanetapi/nms/data/ImdnObject;->imdnInfo:[Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;

    array-length v5, v3

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    .line 140
    const-string v8, "displayed"

    iget-object v7, v7, Lcom/sec/internal/omanetapi/nms/data/ImdnInfo;->type:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 141
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 144
    :cond_1
    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMessageContextType(Ljava/lang/String;)I
    .locals 3

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageContextType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getTypeUsingMessageContext(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getNormalizedParticipantsExcludeOwn()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    .line 355
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TO:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 357
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 358
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNormalizedParticipantsExcludeOwn uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    .line 360
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private recalculateCorrelationTag()V
    .locals 4

    .line 448
    const-string v0, "IN"

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->isInvalidShortCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    .line 459
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->countryCode:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-interface {v0, v2, v1, v3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getSmsHashTagOrCorrelationTag(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    .line 462
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "recalculateCorrelationTag: "

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private updatePartcipantContentEmail()V
    .locals 3

    .line 433
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mRawFromString:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sip:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->FROM:Ljava/lang/String;

    :cond_0
    const/4 v1, 0x1

    .line 442
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public getContentBody()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isLocationPushContentType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    .line 468
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotMessageContentType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isBotResponseMessageContentType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGEBODY:Ljava/lang/String;

    return-object p0

    .line 471
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    return-object p0
.end method

.method public getDispositionNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 1

    .line 475
    const-string v0, "displayed"

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 476
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0

    .line 478
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OMAConvertedObjectParam [mObjectType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mObjectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLine= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mLine:Ljava/lang/String;

    .line 484
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", correlationTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->correlationTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceURL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->resourceURL:Ljava/net/URL;

    .line 486
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mFlag:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , mFlagList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->sFlags:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DISPOSITION_STATUS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DISPOSITION_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsGoforwardSync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsGoforwardSync:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", TEXT_CONTENT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->TEXT_CONTENT:Ljava/lang/String;

    .line 488
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DIRECTION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DIRECTION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", DATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->DATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MESSAGE_ID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->MESSAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", CONTENT_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", X_CNS_Greeting_Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->X_CNS_Greeting_Type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReassembled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mReassembled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFromChangeObj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mIsFromChangedObj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mNomalizedOtherParticipants="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->mNomalizedOtherParticipants:Ljava/util/Set;

    .line 493
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SUBJECT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SUBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", IS_CPM_GROUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_CPM_GROUP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IS_OPEN_GROUP="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IS_OPEN_GROUP:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Importance= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->IMPORTANCE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SENSITIVITY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->SENSITIVITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/params/ParamOMAObject;->protocol:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
