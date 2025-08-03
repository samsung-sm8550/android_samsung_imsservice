.class public Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;
.super Lcom/sec/internal/ims/core/handler/SlmHandler;
.source "ResipSlmHandler.java"


# static fields
.field private static final EVENT_ACCEPT_FT_SLM_MESSAGE:I = 0x2

.field private static final EVENT_ACCEPT_SLM:I = 0x7

.field private static final EVENT_CANCEL_FT_SLM_MESSAGE:I = 0x3

.field private static final EVENT_REJECT_FT_SLM_MESSAGE:I = 0x4

.field private static final EVENT_REJECT_SLM:I = 0x8

.field private static final EVENT_SEND_DISPOSITION_NOTIFICATION:I = 0x6

.field private static final EVENT_SEND_FT_SLM_MESSAGE:I = 0x5

.field private static final EVENT_SEND_SLM_MESSAGE:I = 0x1

.field private static final EVENT_STACK_NOTIFY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "ResipSlmHandler"


# instance fields
.field private final mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private final mMessageSendRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessages:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

.field private final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNotify(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 190
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V
    .locals 1

    .line 194
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/SlmHandler;-><init>(Landroid/os/Looper;)V

    .line 126
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 127
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 128
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 129
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    .line 195
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 196
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    invoke-direct {p2, p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    .line 197
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 200
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p0

    const/16 p1, 0x64

    const/4 p3, 0x0

    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerSlmHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private couldBeEmailGateway(Ljava/lang/String;)Z
    .locals 5

    .line 1452
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "couldBeEmailGateway("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-gt v1, v4, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-gt p0, v4, :cond_1

    move v2, v3

    :cond_1
    return v2
.end method

.method private handleAcceptFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 13

    .line 668
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptFileRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 673
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    .line 674
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v4, v5, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 675
    iput-object v11, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 680
    const-string v2, "handleAcceptFileRequest(): no listener!"

    if-nez v1, :cond_2

    .line 681
    const-string v1, "handleAcceptFileRequest(): session not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 683
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    .line 684
    iget v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const/4 v10, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v0, v11, v1, v11}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 683
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 686
    :cond_1
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 692
    :cond_2
    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 693
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v1

    if-nez v1, :cond_3

    .line 695
    const-string p0, "handleAcceptFileRequest(): ftpayload is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 698
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v1

    if-nez v1, :cond_4

    .line 700
    const-string p0, "handleAcceptFileRequest(): fileAttr is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 704
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v4

    .line 705
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v5

    if-nez v4, :cond_5

    .line 707
    const-string p0, "handleAcceptFileRequest(): file info is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 711
    :cond_5
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    if-eqz v5, :cond_6

    .line 712
    invoke-virtual {v0, v5}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 716
    :cond_6
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 717
    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-static {v0, v4}, Lcom/sec/internal/helper/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    .line 720
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 728
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v7

    if-eqz v4, :cond_7

    .line 729
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    :goto_2
    move-object v9, v1

    goto :goto_3

    :cond_7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    goto :goto_2

    :goto_3
    const/4 v10, 0x0

    move-object v2, v12

    move v4, p1

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-direct {v0, v11, v12, v11}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 730
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_4

    .line 732
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method private handleAcceptSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V
    .locals 9

    .line 738
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptSlmRequest(): params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mRawHandle:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 741
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 742
    const-string/jumbo v3, "slm"

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v8, :cond_1

    .line 744
    const-string v1, "handleAcceptSlmRequest(): User agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 746
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 747
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 752
    :cond_1
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 753
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;->mUserAlias:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {v5, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 756
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->startRequestAcceptSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, v1

    .line 757
    invoke-static {v5, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 758
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 759
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptSlm;->endRequestAcceptSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 761
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x20b

    .line 762
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x39

    .line 763
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 764
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 765
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    .line 767
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const/16 v4, 0x20b

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleAcceptSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;)V
    .locals 3

    .line 815
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int p0, v0

    .line 818
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/StartSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 819
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 821
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptSlmResponse() sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleCancelFileTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 6

    .line 1269
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFileTransfer(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1272
    const-string v1, "handleCancelFileTransfer: params.mRawHandle is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1274
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1275
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 1282
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 1284
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mImdnMessageId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1285
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 1289
    const-string p0, "handleCancelFileTransfer(): pending message - postpone"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iput-object p1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    return-void

    .line 1294
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v3, :cond_5

    .line 1296
    const-string v3, "handleCancelFileTransfer(): unknown session!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 1298
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1299
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_4
    return-void

    .line 1305
    :cond_5
    iget-object v1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v1, :cond_6

    .line 1306
    const-string p0, "handleCancelFileTransfer(): cancel already in progress!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1310
    :cond_6
    iput-object p1, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 1311
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V

    return-void
.end method

.method private handleCancelResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 5

    .line 1362
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int v0, v0

    .line 1363
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1365
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCancelResponse(): sessionHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v3, :cond_0

    .line 1371
    const-string p0, "handleCancelResponse(): cannot find ftsession"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1375
    :cond_0
    iget-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v4, :cond_1

    iget-object v4, v4, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v4, :cond_1

    .line 1376
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v4, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1377
    iget-object p0, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    goto :goto_0

    .line 1379
    :cond_1
    const-string p0, "handleCancelResponse(): no callback set"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleIncomingSlmFileNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 9

    .line 980
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIncomingSlmFileNotify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_0

    .line 984
    const-string p0, "handleIncomingSlmFileNotify(): invalid notify"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 988
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 989
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->session()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v1

    .line 990
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->payload()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;

    move-result-object v2

    if-eqz v1, :cond_13

    if-nez v2, :cond_1

    goto/16 :goto_b

    .line 995
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->fileAttr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;

    move-result-object v3

    if-nez v3, :cond_2

    .line 997
    const-string p0, "handleIncomingSlmFileNotify(): fileAttr is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1001
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 1002
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_3

    .line 1004
    const-string p0, "handleIncomingSlmFileNotify(): User agent not found!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1008
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v6

    long-to-int v0, v6

    .line 1009
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v6}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    .line 1012
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 1013
    iput-object p1, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIncomingFtSession:Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;

    .line 1014
    iget-object v7, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->userHandle()J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, v6, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 1018
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;

    invoke-direct {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;-><init>()V

    .line 1019
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    .line 1021
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/FtIncomingSession;->isLmm()Z

    move-result p1

    iput-boolean p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    .line 1022
    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1026
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1027
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->userAlias()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1029
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    const/4 p1, 0x0

    move v0, p1

    .line 1030
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 1031
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v4

    .line 1032
    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1034
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "participant has Wrong Uri."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1036
    :cond_4
    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mParticipants:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1040
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->contentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1041
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sdpContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1044
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1045
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->path()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1046
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->size()J

    move-result-wide v4

    iput-wide v4, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1048
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 1049
    iget-object v4, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/webkit/MimeTypeMap;->hasMimeType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1050
    new-instance v4, Ljava/io/File;

    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1051
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 1052
    new-instance v0, Ljava/io/File;

    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1054
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1055
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleIncomingSlmFileNotify(): failed to rename! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1058
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleIncomingSlmFileNotify(): file doesn\'t exist! "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_7
    :goto_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1064
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1065
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1067
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1068
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->inReplyToContributionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 1071
    :cond_9
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->start()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mStart:I

    .line 1072
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->end()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mEnd:I

    .line 1073
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->isPush()Z

    move-result v0

    iput-boolean v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mPush:Z

    .line 1076
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1077
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 1078
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, p1

    .line 1079
    :goto_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1080
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1082
    :cond_a
    invoke-static {v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 1083
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->deviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDeviceId:Ljava/lang/String;

    .line 1084
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1086
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    move v0, p1

    .line 1087
    :goto_4
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 1088
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1090
    iget-object v3, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v7, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1094
    :cond_c
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_d
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    :goto_5
    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 1096
    :goto_6
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1097
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    .line 1101
    :cond_e
    :goto_7
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    move v0, p1

    .line 1102
    :goto_8
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespacesLength()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1103
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 1105
    iget-object v3, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    move v3, p1

    .line 1106
    :goto_9
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v4

    if-ge v3, v4, :cond_10

    .line 1107
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 1108
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_f

    .line 1109
    iget-object v5, v6, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1115
    :cond_11
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIncomingSlmFileNotify(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    if-eqz p0, :cond_12

    .line 1118
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v6, v0}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_a

    .line 1120
    :cond_12
    const-string p0, "handleIncomingSlmFileNotify(): no listener!"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void

    .line 992
    :cond_13
    :goto_b
    const-string p0, "handleIncomingSlmFileNotify(): invalid data"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleIncomingSlmMessageNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 11

    .line 837
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIncomingSlmMessageNotify()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x47

    if-eq v1, v2, :cond_0

    .line 841
    const-string p0, "handleIncomingSlmMessageNotify(): invalid notify!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 845
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;

    .line 847
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->msg()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;

    move-result-object v1

    .line 848
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->sessionData()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;

    move-result-object v2

    if-eqz v1, :cond_15

    if-nez v2, :cond_1

    goto/16 :goto_9

    .line 854
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;-><init>()V

    .line 856
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->sessionHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRawHandle:Ljava/lang/Object;

    .line 857
    iget-object v4, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    .line 858
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->userHandle()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_2

    .line 860
    const-string p0, "handleIncomingSlmMessageNotify(): User agent not found!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 864
    :cond_2
    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOwnImsi:Ljava/lang/String;

    .line 865
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Invalid sender uri, return. uri="

    if-nez v4, :cond_3

    .line 866
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 869
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    if-nez v4, :cond_4

    .line 871
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->sender()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 874
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->userAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 875
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->isPublicAccountMsg()Z

    move-result v0

    iput-boolean v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    const/4 v0, 0x0

    move v4, v0

    .line 878
    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receiversLength()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 879
    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mParticipants:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->receivers(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 882
    :cond_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->contentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 883
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->body()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->adjustMessageBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    if-nez v4, :cond_6

    return-void

    .line 888
    :cond_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->silenceSupported()Z

    move-result v4

    iput-boolean v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    if-eqz v4, :cond_7

    .line 890
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v5, "handleIncomingSlmMessageNotify -> routing message"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->requestUri()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRequestUri:Lcom/sec/ims/util/ImsUri;

    .line 892
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->pAssertedId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mPAssertedId:Lcom/sec/ims/util/ImsUri;

    .line 893
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->receiver()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mReceiver:Lcom/sec/ims/util/ImsUri;

    .line 896
    :cond_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 897
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->messageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 899
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 900
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->originalToHdr()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    :cond_9
    const/4 v4, 0x0

    .line 904
    :try_start_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->datetime()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/Iso8601;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_a
    move-object v5, v4

    :goto_1
    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 906
    :goto_2
    invoke-virtual {v5}, Ljava/text/ParseException;->printStackTrace()V

    .line 909
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 910
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    if-eqz v6, :cond_b

    move v6, v0

    .line 911
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->notiLength()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 912
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->noti(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 916
    :cond_b
    invoke-static {v5}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateStackImdnNoti(Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 917
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->contributionId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 918
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->conversationId()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 920
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v5

    if-lez v5, :cond_d

    .line 921
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    move v5, v0

    .line 922
    :goto_5
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRouteLength()I

    move-result v6

    if-ge v5, v6, :cond_d

    .line 923
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->imdn()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->recRoute(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;

    move-result-object v6

    if-eqz v6, :cond_c

    .line 925
    sget-object v7, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imdn route: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    iget-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    new-instance v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;

    iget-object v9, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->uri()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnRecRoute;->name()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v9, v10, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 931
    :cond_d
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-direct {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;-><init>()V

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    move v5, v0

    .line 932
    :goto_6
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespacesLength()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 933
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->cpimNamespaces(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 935
    iget-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->uri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v0

    .line 936
    :goto_7
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headersLength()I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 937
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->headers(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 938
    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 939
    iget-object v9, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;->getNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->key()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->value()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces$CpimNamespace;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 946
    :cond_10
    iget-object v1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-direct {p0, v1, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 948
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sip:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 949
    const-string v5, ""

    iput-object v5, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    const/4 v5, 0x1

    .line 950
    aget-object v1, v1, v5

    iput-object v1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 954
    :cond_11
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 955
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->extension()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImExtensionHeaders(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImExtension;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 958
    :cond_12
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmMessageIncoming;->isLmm()Z

    move-result p1

    iput-boolean p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    .line 959
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->isChatbotParticipant()Z

    move-result p1

    iput-boolean p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsChatbotRole:Z

    if-eqz p1, :cond_13

    .line 961
    iget-object p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    if-eqz p1, :cond_13

    .line 962
    const-string/jumbo v1, "tk"

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 963
    iget-object p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "on"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 966
    iget-object p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v1}, Lcom/sec/ims/util/ImsUri;->removeParam(Ljava/lang/String;)V

    .line 968
    :cond_13
    iput-boolean v0, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsTokenUsed:Z

    .line 970
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleIncomingSlmMessageNotify(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    if-eqz p0, :cond_14

    .line 973
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v4, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_8

    .line 975
    :cond_14
    const-string p0, "handleIncomingSlmMessageNotify(): no listener!"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    return-void

    .line 850
    :cond_15
    :goto_9
    const-string p0, "handleIncomingSlmMessageNotify(): invalid data."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 1

    .line 1384
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notifyid()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1406
    :pswitch_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleNotify(): unexpected id"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1398
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmSipResponseReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1402
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmLMMIncomingSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1394
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSlmProgress(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1390
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleIncomingSlmFileNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    goto :goto_0

    .line 1386
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleIncomingSlmMessageNotify(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4650
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleRejectSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V
    .locals 9

    .line 771
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectSlmRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mRawHandle:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 774
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 775
    const-string/jumbo v3, "slm"

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v8, :cond_1

    .line 777
    const-string v1, "handleRejectSlmRequest(): User agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 779
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 780
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 785
    :cond_1
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 786
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 789
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 790
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz v2, :cond_3

    .line 791
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 792
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 794
    :cond_3
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 796
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->startRequestRejectSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, v1

    .line 797
    invoke-static {v5, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 798
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    if-eqz p1, :cond_4

    .line 799
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getSipCode()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v5, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 801
    :cond_4
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 802
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectSlm;->endRequestRejectSlm(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 804
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 805
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x20c

    .line 806
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x3a

    .line 807
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 808
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    .line 810
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const/16 v4, 0x20c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleRejectSlmResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;)V
    .locals 3

    .line 826
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->sessionHandle()J

    move-result-wide v0

    long-to-int p0, v0

    .line 829
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/CloseSessionResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 830
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    .line 832
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectSlmResponse() sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", error = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSendFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 524
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendFileRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 527
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v5, "slm"

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_1

    .line 529
    const-string v3, "handleSendMessageRequest(): UserAgent not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 531
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 532
    iput-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 537
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    .line 538
    iget v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 539
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    const/4 v3, 0x1

    .line 540
    iput-boolean v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    .line 541
    iget-wide v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    iput-wide v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    .line 542
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 545
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 548
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    const-string v6, ""

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v6

    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 549
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v6

    :goto_1
    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 550
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v8, v6

    :goto_2
    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 551
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 552
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    if-eqz v10, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v6

    :goto_3
    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 553
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 554
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 555
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 556
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 557
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 558
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    move-object/from16 v17, v6

    .line 559
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [I

    .line 562
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v16, 0x0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/sec/ims/util/ImsUri;

    if-eqz v18, :cond_6

    .line 563
    invoke-virtual/range {v18 .. v18}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v18

    move-object/from16 v18, v0

    move-object/from16 v0, v20

    goto :goto_5

    :cond_6
    move-object/from16 v18, v0

    move-object/from16 v0, v17

    :goto_5
    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 564
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 565
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 566
    iget-boolean v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    .line 567
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addCopyControl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_7
    add-int/lit8 v0, v16, 0x1

    .line 569
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v19

    aput v19, v6, v16

    move/from16 v16, v0

    move-object/from16 v0, v18

    goto :goto_4

    .line 571
    :cond_8
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 573
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 574
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 575
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 576
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 577
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSdpContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 578
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 579
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 581
    :cond_9
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 582
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 584
    :cond_a
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 586
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 587
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 588
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 589
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 590
    iget-wide v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    long-to-int v1, v6

    int-to-long v6, v1

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 591
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 593
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 594
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 595
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 596
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 598
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->startFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 599
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 600
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 601
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->endFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 603
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->startRequestSendSlmFile(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 604
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v6, v3

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 605
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 606
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 607
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 608
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendSlmFile;->endRequestSendSlmFile(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 610
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 611
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x209

    .line 612
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x32

    .line 613
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 614
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    move-object/from16 v0, p0

    .line 616
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/16 v1, 0x209

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendFileResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 13

    .line 620
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendFileResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v1, :cond_0

    .line 625
    const-string p0, "handleSendFileResponse(): no StandaloneMessage found!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 628
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->slmMode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 632
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v2, :cond_1

    .line 633
    const-string p1, "handleSendFileResponse(): send pending cancel request"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V

    return-void

    .line 637
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 638
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v12

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendFileResponse(): sessionHandle = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v2, :cond_2

    .line 642
    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    iget-object v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-direct {v4, v12, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 643
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 646
    :cond_2
    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v4, :cond_3

    .line 647
    const-string/jumbo p0, "request sendFile is failed!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 651
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    iget-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v2, v4, :cond_5

    .line 653
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    iget-wide v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    const-wide/16 v9, 0x0

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 655
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 656
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 657
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 659
    :cond_4
    const-string p0, "handleSendFileResponse(): no listener!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 319
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendMessageRequest(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v3

    .line 322
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    const-string/jumbo v5, "slm"

    invoke-interface {v3, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v5, :cond_1

    .line 324
    const-string v3, "handleSendMessageRequest(): UserAgent not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 326
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 331
    :cond_1
    new-instance v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;-><init>()V

    .line 332
    iget v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    iput v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    .line 333
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    iput-object v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 334
    iget-object v4, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v4

    iput v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    .line 336
    iget-boolean v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    iput-boolean v4, v3, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mIsChatbotMessage:Z

    .line 338
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "charset="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 339
    const-string v3, "handleSendMessageRequest(): missed charset, use utf8!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";charset=UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    .line 343
    :cond_2
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 346
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 348
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mUserAlias:Ljava/lang/String;

    const-string v7, ""

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v7

    :goto_0
    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 349
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_4
    move-object v8, v7

    :goto_1
    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 350
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    move-object v9, v7

    :goto_2
    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 351
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 352
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_6
    move-object v11, v7

    :goto_3
    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 353
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v12, :cond_7

    invoke-virtual {v12}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_7
    move-object v12, v7

    :goto_4
    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 354
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamDate()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_8
    move-object v13, v7

    :goto_5
    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 355
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 356
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v15}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v15

    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v15

    .line 357
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v3}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move-object/from16 v16, v7

    .line 358
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    move-object/from16 v17, v5

    .line 359
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 361
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v18, 0x0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/ims/util/ImsUri;

    if-eqz v19, :cond_9

    .line 362
    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v21, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v21

    goto :goto_7

    :cond_9
    move-object/from16 v19, v0

    move-object/from16 v0, v16

    :goto_7
    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 363
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->startParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 364
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 365
    iget-boolean v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .line 366
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->addCopyControl(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_a
    add-int/lit8 v0, v18, 0x1

    .line 368
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Participant;->endParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v20

    aput v20, v4, v18

    move/from16 v18, v0

    move-object/from16 v0, v19

    goto :goto_6

    .line 371
    :cond_b
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->createParticipantVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 373
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 374
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 375
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 376
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 377
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 379
    :cond_c
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 380
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 382
    :cond_d
    iget-boolean v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsChatbotParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 383
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 385
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->startReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 386
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamFrom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 387
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 388
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamDate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 389
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->endReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 391
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 392
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 393
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v9, :cond_e

    .line 394
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 396
    :cond_e
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 397
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 399
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 402
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 403
    const-string v10, "maap"

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 404
    const-string v11, "<http://www.gsma.com/rcs/maap/>"

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 405
    const-string v12, "Traffic-Type"

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 406
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 408
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 409
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 410
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 411
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 413
    filled-new-array {v12}, [I

    move-result-object v12

    .line 414
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v12

    .line 416
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 417
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 418
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 419
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 420
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    :cond_f
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceId:Ljava/lang/String;

    const/4 v11, 0x1

    if-nez v10, :cond_10

    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceType:Ljava/lang/String;

    if-eqz v10, :cond_13

    .line 423
    :cond_10
    const-string/jumbo v10, "rcs"

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 424
    const-string v12, "<http://www.gsma.com>"

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    const/4 v13, 0x0

    .line 431
    new-array v14, v13, [I

    .line 433
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceId:Ljava/lang/String;

    if-eqz v15, :cond_11

    .line 434
    const-string v15, "Reference-ID"

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 435
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceId:Ljava/lang/String;

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 437
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 438
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 439
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 440
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 441
    invoke-static {v14, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 442
    array-length v15, v14

    sub-int/2addr v15, v11

    aput v13, v14, v15

    .line 444
    :cond_11
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceType:Ljava/lang/String;

    if-eqz v13, :cond_12

    .line 445
    const-string v13, "Reference-Type"

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 446
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceType:Ljava/lang/String;

    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 448
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 449
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 450
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 451
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    .line 452
    array-length v15, v14

    add-int/2addr v15, v11

    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 453
    array-length v15, v14

    sub-int/2addr v15, v11

    aput v13, v14, v15

    .line 456
    :cond_12
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    .line 458
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 459
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 460
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 461
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 462
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_15

    .line 465
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v12, v10, [I

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v10, :cond_14

    .line 467
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 469
    :cond_14
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v10

    goto :goto_9

    :cond_15
    const/4 v10, -0x1

    .line 472
    :goto_9
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 473
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 474
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 475
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 476
    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addIsPublicAccountMsg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 477
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 478
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    .line 479
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 481
    :cond_16
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 483
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->startRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 484
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v5, v3

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 485
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 486
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 487
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 488
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->addParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 489
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImSlmMessage;->endRequestSendImSlmMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 491
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 492
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x208

    .line 493
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x31

    .line 494
    invoke-static {v2, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 495
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    move-object/from16 v0, p0

    .line 497
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    invoke-virtual {v1, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/16 v1, 0x208

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendMessageResponse(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;)V
    .locals 5

    .line 501
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageResponse()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessageSendRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-nez v1, :cond_0

    .line 506
    const-string p0, "no message found!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 509
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->slmMode()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    .line 510
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    .line 511
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Response_/SendSlmResponse;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSendMessageResponse(): sessionHandle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v3, v4, :cond_1

    .line 514
    const-string/jumbo v3, "request sendMessage is failed!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v3, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 516
    iput-object v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    return-void

    .line 520
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleSlmLMMIncomingSession(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 11

    .line 1228
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSlmLMMIncomingSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_0

    .line 1232
    const-string p0, "handleSlmLMMIncomingSession(): invalid notify"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1236
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;

    .line 1238
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1239
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->userHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v2, :cond_1

    .line 1242
    const-string p0, "handleSlmLMMIncomingSession(): UserAgent not found."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1247
    :cond_1
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;

    invoke-direct {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;-><init>()V

    .line 1249
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->sessionHandle()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1250
    iput-object v7, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1251
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->sender()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiator:Lcom/sec/ims/util/ImsUri;

    .line 1252
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->userAlias()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mInitiatorAlias:Ljava/lang/String;

    .line 1253
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1254
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmLMMInvited;->isGroup()Z

    move-result p1

    iput-boolean p1, v3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmLMMIncomingSessionEvent;->mIsGroup:Z

    .line 1256
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {p1, v4, v3, v4}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1257
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v3}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1258
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1262
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSlmLMMIncomingSession(): Empty registrants, reject handle="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v9, 0x0

    .line 1264
    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object v10

    const/4 v6, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;Landroid/os/Message;Ljava/lang/String;)V

    .line 1263
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    :goto_0
    return-void
.end method

.method private handleSlmProgress(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 13

    .line 1126
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    .line 1127
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSlmProgress(): invalid notify"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1131
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;-><init>()V

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;

    .line 1133
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSlmProgress(): total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->total()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", transferred = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->transferred()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", imdnMessageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imdnMessageId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    .line 1137
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->state()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtProgressState(I)Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    move-result-object v10

    if-nez v1, :cond_1

    .line 1140
    const-string p0, "handleSlmProgress(): no StandaloneMessage found!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1143
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->TRANSFERRING:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v10, v2, :cond_2

    .line 1144
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    :cond_2
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    const/4 v12, 0x0

    if-eqz v2, :cond_4

    .line 1147
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v11

    .line 1148
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->sessionHandle()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->total()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->transferred()J

    move-result-wide v8

    move-object v3, v2

    invoke-direct/range {v3 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1150
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v12, v2, v12}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1151
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1152
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 1154
    :cond_3
    const-string p0, "handleSlmProgress(): no listener!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmProgress;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object p1

    invoke-static {p1, v12}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1158
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    if-eq v10, v0, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v2, :cond_6

    .line 1159
    :cond_5
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v2, p1, v12}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1160
    iput-object v12, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    :cond_6
    :goto_0
    return-void
.end method

.method private handleSlmSipResponseReceived(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;)V
    .locals 14

    .line 1166
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HandleSlmSipResponseReceived() Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->notiType()B

    move-result v1

    const/16 v2, 0x26

    if-eq v1, v2, :cond_0

    .line 1169
    const-string p0, "handlSlmSipResponseReceived(): invalid notify"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1173
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;-><init>()V

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify;->noti(Lcom/google/flatbuffers/Table;)Lcom/google/flatbuffers/Table;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;

    .line 1174
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;

    if-eqz v1, :cond_8

    .line 1177
    iget-boolean v2, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->isFile:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v4, v5, :cond_4

    .line 1178
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v13

    .line 1180
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    iget-wide v8, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    .line 1181
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v4, :cond_1

    iget-wide v10, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mFileSize:J

    goto :goto_0

    :cond_1
    const-wide/16 v10, 0x0

    .line 1182
    :goto_0
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p1

    if-ne p1, v4, :cond_2

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->COMPLETED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    :goto_1
    move-object v12, p1

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    goto :goto_1

    :goto_2
    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1185
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1186
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_3

    .line 1189
    :cond_3
    const-string p1, "handleSlmSipResponseReceived(): no listener!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1192
    :cond_4
    iget-object v4, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mMode:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->PAGER:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v4, v5, :cond_5

    if-nez v2, :cond_5

    .line 1193
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v2

    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSlmSipResponseReceived(), result= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->passertedId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, v2, p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1196
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1197
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1198
    :cond_5
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;->LARGE_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/SlmMode;

    if-ne v4, v5, :cond_7

    if-eqz v2, :cond_7

    .line 1199
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFtResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object v13

    .line 1200
    invoke-virtual {v13}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v4, :cond_9

    .line 1201
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mId:I

    const-wide/16 v10, 0x0

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;

    const-wide/16 v8, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v13}, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent;-><init>(Ljava/lang/Object;IJJLcom/sec/internal/constants/ims/servicemodules/im/event/FtTransferProgressEvent$State;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 1204
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p1, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1205
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v1}, Lcom/sec/internal/helper/RegistrantList;->size()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1207
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_4

    .line 1209
    :cond_6
    const-string p0, "handlSlmSipResponseReceived(): no listener!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    if-ne v4, v5, :cond_9

    if-nez v2, :cond_9

    .line 1213
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imError()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->warningHdr()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateImResult(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImError;Ljava/lang/Object;)Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    move-result-object p1

    .line 1214
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v2, v4, :cond_9

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSlmSipResponseReceived(): SipResponse is not 200 OK, result= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    invoke-direct {v2, p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/String;)V

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1217
    iput-object v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    .line 1218
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mMessages:Ljava/util/Map;

    iget-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1222
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSlmSipResponseReceived(): no StandaloneMessage found!, ImdnMessageId : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->imdnMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SessionHandle : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/SlmSipResponseReceived;->sessionHandle()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1222
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-void
.end method

.method private parseEmailOverSlm(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    .line 1420
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "parseEmailOverSlm"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 1422
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getUser()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->couldBeEmailGateway(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1423
    const-string/jumbo p0, "parseEmailOverSlm: No email gateway"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1427
    :cond_0
    const-string p0, "( /)|( )"

    const/4 p1, 0x2

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 1429
    array-length p2, p0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_1

    aget-object v3, p0, v2

    .line 1430
    sget-object v4, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEmailOverSlm: part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1433
    :cond_1
    array-length p2, p0

    if-ge p2, p1, :cond_2

    .line 1434
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "parseEmailOverSlm: message type is not email"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1438
    :cond_2
    aget-object p1, p0, v0

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/ResipUtils;->validateEmailAddressFormat(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1439
    sget-object p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "parseEmailOverSlm: email type message"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_3
    return-object v1
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1462
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 1457
    invoke-static {p1, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1458
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;)V
    .locals 8

    .line 1315
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCancelRequestToStack(): session handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1318
    iget v2, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mUaHandle:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    if-nez v7, :cond_1

    .line 1320
    const-string/jumbo v1, "sendCancelRequestToStack(): UserAgent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1322
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1324
    iput-object v3, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mStatusCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 1329
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-nez v1, :cond_2

    .line 1331
    const-string/jumbo p0, "sendCancelRequestToStack(): null reject params!"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1335
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 1337
    :goto_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1338
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1341
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1342
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1343
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1344
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1346
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1347
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v0

    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1348
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StandaloneMessage;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1349
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1350
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1352
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1353
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x20a

    .line 1354
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p1, 0x2f

    .line 1355
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1356
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1358
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler$StackIFHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x20a

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    if-nez p5, :cond_0

    .line 1413
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1416
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method


# virtual methods
.method public acceptFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 1

    const/4 v0, 0x2

    .line 225
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public acceptSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V
    .locals 1

    const/4 v0, 0x7

    .line 270
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    const/4 v0, 0x3

    .line 235
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 314
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 311
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleRejectSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V

    goto :goto_0

    .line 308
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptSlmRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptSlmParams;)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    goto :goto_0

    .line 295
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V

    goto :goto_0

    .line 305
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleCancelFileTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 298
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleAcceptFileRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    goto :goto_0

    .line 292
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public registerForSlmIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSlmIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSlmLMMIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 280
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSlmTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public rejectFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    const/4 v0, 0x4

    .line 230
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public rejectSlm(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectSlmParams;)V
    .locals 1

    const/16 v0, 0x8

    .line 275
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFtSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;)V
    .locals 1

    const/4 v0, 0x5

    .line 220
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 205
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 210
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendSlmMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unregisterForSlmIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSlmIncomingMessage(Landroid/os/Handler;)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSlmLMMIncomingSession(Landroid/os/Handler;)V
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mIncomingSlmLMMSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSlmTransferProgress(Landroid/os/Handler;)V
    .locals 0

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipSlmHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
