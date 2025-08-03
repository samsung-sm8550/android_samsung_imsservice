.class public Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;
.super Lcom/sec/internal/ims/core/handler/ImHandler;
.source "ResipImHandler.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# instance fields
.field protected final mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mFtSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field private mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected final mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field protected final mPendingFtSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPendingSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;",
            ">;"
        }
    .end annotation
.end field

.field protected final mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field protected final mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

.field protected final mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 246
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;)V
    .locals 1

    .line 250
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/ImHandler;-><init>(Landroid/os/Looper;)V

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    .line 161
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 162
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 163
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 164
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 165
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 166
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 167
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 168
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 169
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 170
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 172
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 173
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 174
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 175
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    .line 176
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 177
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 178
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 251
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 252
    new-instance p2, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    invoke-direct {p2, p1, p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    .line 253
    iput-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    .line 256
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->getInstance()Lcom/sec/internal/ims/core/handler/secims/StackIF;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 p2, 0x64

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/StackIF;->registerImHandler(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private static adjustFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    return-object p0
.end method

.method private getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)[I"
        }
    .end annotation

    .line 2416
    new-array p0, p3, [I

    .line 2418
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_0

    .line 2419
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    .line 2420
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    aput v0, p0, p3

    move p3, v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;I)[I"
        }
    .end annotation

    .line 2405
    new-array p0, p3, [I

    .line 2407
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2408
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, p3, 0x1

    .line 2409
    invoke-virtual {p1, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    aput v0, p0, p3

    move p3, v1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private handleAcceptFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 9

    .line 2096
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptFtSessionRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2098
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2099
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2101
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcceptFtSessionRequest(): no session in map, return accept failure, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2103
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2104
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 2108
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    iput-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mAcceptCallback:Landroid/os/Message;

    .line 2109
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mMessageId:I

    iput v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 2111
    iget v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v8

    if-nez v8, :cond_3

    .line 2113
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAcceptFtSessionRequest(): User agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 2115
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2116
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_2
    return-void

    .line 2122
    :cond_3
    new-instance v5, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2123
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2124
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 2127
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->startRequestAcceptFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2128
    iget v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v3, v1

    invoke-static {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2129
    iget-wide v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mStart:J

    invoke-static {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2130
    iget-wide v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;->mEnd:J

    invoke-static {v5, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2131
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addFilePath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2132
    invoke-static {v5, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2133
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptFtSession;->endRequestAcceptFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2135
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x229

    .line 2136
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x30

    .line 2137
    invoke-static {v5, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2138
    invoke-static {v5, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2139
    invoke-static {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    .line 2141
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const/16 v4, 0x229

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleAcceptImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
    .locals 11

    .line 963
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAcceptImSessionRequest(): params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 966
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 969
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleAcceptImSessionRequest: no session in map, return accept failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 971
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 972
    invoke-direct {v2, v4, v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    .line 971
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 973
    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 978
    :cond_1
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mChatId:Ljava/lang/String;

    iput-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChatId:Ljava/lang/String;

    .line 980
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mCallback:Landroid/os/Message;

    iput-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    .line 981
    iget-boolean v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mIsSnF:Z

    iput-boolean v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mIsSnF:Z

    .line 983
    iget v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v10

    if-nez v10, :cond_3

    .line 985
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleAcceptImSessionRequest(): UserAgent not found. UaHandle = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object p1, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 987
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v4, v5, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 988
    invoke-direct {v1, v4, v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    .line 987
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 989
    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAcceptCallback:Landroid/os/Message;

    :cond_2
    return-void

    .line 995
    :cond_3
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 996
    new-instance v7, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 997
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 999
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->startRequestAcceptImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, v1

    .line 1000
    invoke-static {v7, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1001
    invoke-static {v7, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1002
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestAcceptImSession;->endRequestAcceptImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1003
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1f6

    .line 1004
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x28

    .line 1005
    invoke-static {v7, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1006
    invoke-static {v7, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1007
    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 1009
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const/16 v6, 0x1f6

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleAddParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
    .locals 9

    .line 1527
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAddParticipantsRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1531
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAddParticipantsRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 1533
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1538
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 1539
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1540
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mAddParticipantsCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1543
    :cond_2
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1545
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleAddParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 1547
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 1552
    :cond_4
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1553
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1555
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReceivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v8, v5, 0x1

    if-eqz v6, :cond_5

    .line 1556
    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    const-string v6, ""

    :goto_1
    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    aput v6, v2, v5

    move v5, v8

    goto :goto_0

    .line 1559
    :cond_6
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1560
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;->mSubject:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 1561
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1562
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1563
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1564
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1565
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1566
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1567
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1568
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1570
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1571
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1572
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1573
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1574
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1576
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1fe

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleCancelFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 5

    .line 2145
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCancelFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mFileTransferId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-eqz v0, :cond_0

    .line 2151
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCancelFtSessionRequest(): pending session - postpone"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    return-void

    .line 2155
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2156
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v1, :cond_2

    .line 2158
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleCancelFtSessionRequest(): unknown session!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 2160
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 2161
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_1
    return-void

    .line 2169
    :cond_2
    iget-object v0, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-eqz v0, :cond_3

    .line 2170
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleCancelFtSessionRequest(): there is a ongoing cancel request, ignore further cancel request"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2175
    :cond_3
    iput-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2176
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V

    return-void
.end method

.method private handleChangeGroupChatAliasRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
    .locals 8

    .line 1831
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcAliasRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1833
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1836
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGcAliasRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 1838
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1843
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 1844
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mAlias:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1845
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCAliasCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    :cond_2
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1850
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGcAliasRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 1852
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 1857
    :cond_4
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1860
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mReqKey:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_5

    .line 1861
    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1864
    :goto_0
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;->mAlias:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 1865
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v1, v2, :cond_6

    .line 1867
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1869
    :cond_6
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v0, 0x3

    .line 1870
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1871
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1872
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1874
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1875
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1876
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1877
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1878
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1880
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x17

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1fe

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleChangeGroupChatIconRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
    .locals 7

    .line 1754
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChangeGroupChatIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1756
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 1759
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onChangeGroupChatIcon: Session does not exist."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1763
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 1764
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1765
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCIconCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    :cond_1
    new-instance v1, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1772
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_7

    .line 1774
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 1776
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1777
    invoke-static {v2}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1778
    invoke-static {v2}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1782
    :cond_2
    const-string v2, ""

    .line 1783
    :goto_0
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1784
    invoke-virtual {v1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 1789
    invoke-virtual {v1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    goto :goto_2

    :cond_4
    move v2, v3

    .line 1792
    :goto_2
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq v4, v3, :cond_5

    .line 1794
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_5
    if-eq v2, v3, :cond_6

    .line 1797
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1799
    :cond_6
    new-instance v2, Ljava/io/File;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1800
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    goto :goto_3

    :cond_7
    move v2, v3

    .line 1804
    :goto_3
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mReqKey:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 1805
    invoke-virtual {v1, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    goto :goto_4

    :cond_8
    move v4, v3

    .line 1808
    :goto_4
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1810
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;->mIconPath:Ljava/lang/String;

    if-eqz p1, :cond_9

    .line 1811
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addIconAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1814
    :cond_9
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v5, p1

    invoke-static {v1, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x5

    .line 1815
    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq v4, v3, :cond_a

    .line 1817
    invoke-static {v1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1820
    :cond_a
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1821
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1822
    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v2, 0x36

    .line 1823
    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1824
    invoke-static {v1, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1825
    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1827
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    return-void
.end method

.method private handleChangeGroupChatLeaderRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
    .locals 8

    .line 1637
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGroupChatLeaderRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1641
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 1643
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1648
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    if-nez v1, :cond_3

    .line 1649
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: Leader info not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_2

    .line 1651
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 1656
    :cond_3
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz v2, :cond_4

    .line 1657
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1658
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCLeaderCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1660
    :cond_4
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1662
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGroupChatLeaderRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_5

    .line 1664
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_5
    return-void

    .line 1669
    :cond_6
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1670
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1672
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mLeader:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    if-eqz v5, :cond_7

    .line 1673
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v2, v1

    goto :goto_0

    .line 1677
    :cond_8
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;->mReqKey:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz p1, :cond_9

    .line 1678
    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_2

    :cond_9
    move p1, v1

    .line 1681
    :goto_2
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1682
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1683
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p1, v1, :cond_a

    .line 1685
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1687
    :cond_a
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x2

    .line 1688
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1689
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1691
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1692
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1693
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1694
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1695
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1697
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1fe

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleChangeGroupChatSubjectRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
    .locals 8

    .line 1701
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleChangeGcSubjectRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1703
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleChangeGcSubjectRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 1708
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1713
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 1714
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mSubject:Ljava/lang/String;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1715
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mChangeGCSubjectCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1718
    :cond_2
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 1722
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 1727
    :cond_4
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1728
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1731
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;->mReqKey:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz p1, :cond_5

    .line 1732
    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_0

    :cond_5
    move p1, v2

    .line 1735
    :goto_0
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    if-eq p1, v2, :cond_6

    .line 1737
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1739
    :cond_6
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x4

    .line 1740
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1741
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1742
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1744
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1745
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1746
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1747
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1748
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1750
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1fe

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleCloseImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
    .locals 4

    .line 1064
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCloseImSessionRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleCloseImSessionRequest(): unknown session!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1070
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1071
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 1075
    :cond_1
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    .line 1076
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendImCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;)V

    return-void
.end method

.method private handleRemoveParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
    .locals 8

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRemoveParticipantsRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1582
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: Session not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 1586
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1591
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 1592
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1593
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRemoveParticipantsCallbacks:Ljava/util/Map;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1596
    :cond_2
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_4

    .line 1598
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRemoveParticipantsRequest: User agent not found."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_3

    .line 1600
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3
    return-void

    .line 1605
    :cond_4
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1606
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1608
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mRemovedParticipants:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v6, v1, 0x1

    if-eqz v5, :cond_5

    .line 1609
    invoke-virtual {v5}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v2, v1

    move v1, v6

    goto :goto_0

    .line 1613
    :cond_6
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;->mReqKey:Ljava/lang/String;

    const/4 v1, -0x1

    if-eqz p1, :cond_7

    .line 1614
    invoke-virtual {v4, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    goto :goto_2

    :cond_7
    move p1, v1

    .line 1616
    :goto_2
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->createReceiverVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    .line 1617
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->startRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1618
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReceiver(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eq p1, v1, :cond_8

    .line 1620
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1622
    :cond_8
    iget-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 p1, 0x1

    .line 1623
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1624
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestUpdateParticipants;->endRequestUpdateParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1626
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fe

    .line 1627
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x36

    .line 1628
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1629
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1630
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1632
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x15

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1fe

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleReportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
    .locals 10

    .line 2302
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleReportChatbotAsSpam"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 2304
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mSpamInfo:Ljava/lang/String;

    .line 2305
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mRequestId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2307
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2312
    :cond_0
    const-string v3, "chatbot-communication"

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;->mPhoneId:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_1

    .line 2314
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleReportChatbotAsSpam(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2318
    :cond_1
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2319
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2320
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2321
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2323
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->startRequestReportChatbotAsSpam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2324
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2325
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addChatbotUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2326
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addSpamInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2327
    invoke-static {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->addRequestId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2328
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestReportChatbotAsSpam;->endRequestReportChatbotAsSpam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2330
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x578

    .line 2331
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x35

    .line 2332
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2333
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2334
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 2336
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x1f

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/16 v5, 0x578

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void

    .line 2308
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleReportChatbotAsSpam - Invalid ChatBotUrl"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleRequestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
    .locals 10

    .line 2341
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRequestChatbotAnonymize"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mChatbotUri:Lcom/sec/ims/util/ImsUri;

    .line 2343
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mAliasXml:Ljava/lang/String;

    .line 2344
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mCommandId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2345
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2350
    :cond_0
    const-string v3, "chatbot-communication"

    iget p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;->mPhoneId:I

    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_1

    .line 2352
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRequestChatbotAnonymize(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2355
    :cond_1
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2356
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2357
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 2358
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2360
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->startRequestChatbotAnonymize(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2361
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v6, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2362
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addChatbotUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2363
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addAnonymizeInfo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2364
    invoke-static {v6, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->addCommandId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2365
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestChatbotAnonymize;->endRequestChatbotAnonymize(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2367
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x579

    .line 2368
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x34

    .line 2369
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2370
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2371
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 2372
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/16 v5, 0x579

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void

    .line 2346
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleRequestChatbotAnonymize - Invalid ChatBotUrl"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleSendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
    .locals 8

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendComposingNotification(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_0

    .line 1188
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSendComposingNotification(): invalid session handle!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1192
    :cond_0
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1194
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSendComposingNotification(): user agent not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1198
    :cond_1
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1199
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1200
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1202
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->startImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1203
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1204
    iget v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mInterval:I

    int-to-long v5, v1

    invoke-static {v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addInterval(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1205
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;->mIsComposing:Z

    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->addIsActive(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1206
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImComposingStatus;->endImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1208
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->startRequestSendImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1209
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1210
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addStatus(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1211
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1212
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImComposingStatus;->endRequestSendImComposingStatus(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1214
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1f9

    .line 1215
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2c

    .line 1216
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1217
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1218
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1220
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x9

    .line 1221
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1f9

    move-object v2, p0

    .line 1220
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 2

    .line 1443
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->mRawHandle:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1444
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1446
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    return-void
.end method

.method private handleSendFtDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 2

    .line 1450
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    const/4 v0, 0x2

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->sendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;II)V

    return-void
.end method

.method private handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
    .locals 14

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessageRequest(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    if-nez v0, :cond_1

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): invalid session handle!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1231
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1237
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSendMessageCallbacks:Ljava/util/Map;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1241
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSendMessageRequest(): user agent not found"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1243
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1245
    iput-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    :cond_2
    return-void

    .line 1250
    :cond_3
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "charset="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1251
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleSendMessageRequest(): missed charset, use utf8!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";charset=UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 1255
    :cond_4
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-static {v1}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v1

    .line 1257
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1259
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 1260
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1261
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_5
    const-string v5, ""

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1263
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1264
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1265
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1266
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1267
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1269
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 1273
    const-string v5, "maap"

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1274
    const-string v6, "<http://www.gsma.com/rcs/maap/>"

    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1275
    const-string v8, "Traffic-Type"

    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1276
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1278
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1279
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1280
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1281
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 1282
    filled-new-array {v8}, [I

    move-result-object v8

    .line 1283
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v8

    .line 1285
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1286
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1287
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1288
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1289
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_6
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    const-string v6, "Reference-Type"

    const-string v8, "Reference-ID"

    const/4 v9, 0x1

    if-nez v5, :cond_7

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-nez v5, :cond_7

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v5, :cond_b

    .line 1292
    :cond_7
    const-string v5, "Extended-RCS"

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1293
    const-string v10, "<http://www.tta.or.kr>"

    invoke-virtual {v4, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1303
    new-array v11, v2, [I

    .line 1305
    iget-object v12, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-eqz v12, :cond_8

    .line 1306
    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1307
    iget-object v13, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1309
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1310
    invoke-static {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1311
    invoke-static {v4, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1312
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1313
    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 1314
    array-length v13, v11

    sub-int/2addr v13, v9

    aput v12, v11, v13

    .line 1316
    :cond_8
    iget-object v12, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-eqz v12, :cond_9

    .line 1317
    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1318
    iget-object v13, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1320
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1321
    invoke-static {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1322
    invoke-static {v4, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1323
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1324
    array-length v13, v11

    add-int/2addr v13, v9

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 1325
    array-length v13, v11

    sub-int/2addr v13, v9

    aput v12, v11, v13

    .line 1327
    :cond_9
    iget-object v12, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v12, :cond_a

    .line 1328
    const-string v12, "Reference-Value"

    invoke-virtual {v4, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1329
    iget-object v13, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v4, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1331
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1332
    invoke-static {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1333
    invoke-static {v4, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1334
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 1335
    array-length v13, v11

    add-int/2addr v13, v9

    invoke-static {v11, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 1336
    array-length v13, v11

    sub-int/2addr v13, v9

    aput v12, v11, v13

    .line 1339
    :cond_a
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v11

    .line 1341
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1342
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1343
    invoke-static {v4, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1344
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1345
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    :cond_b
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    if-nez v5, :cond_c

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 1348
    :cond_c
    const-string/jumbo v5, "rcs"

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1349
    const-string v10, "<http://www.gsma.com>"

    invoke-virtual {v4, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1356
    new-array v11, v2, [I

    .line 1358
    iget-object v12, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    if-eqz v12, :cond_d

    .line 1359
    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1360
    iget-object v12, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    invoke-virtual {v4, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1362
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1363
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1364
    invoke-static {v4, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1365
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v8

    .line 1366
    invoke-static {v11, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 1367
    array-length v12, v11

    sub-int/2addr v12, v9

    aput v8, v11, v12

    .line 1369
    :cond_d
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    if-eqz v8, :cond_e

    .line 1370
    invoke-virtual {v4, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1371
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1373
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1374
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1375
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1376
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v6

    .line 1377
    array-length v8, v11

    add-int/2addr v8, v9

    invoke-static {v11, v8}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    .line 1378
    array-length v8, v11

    sub-int/2addr v8, v9

    aput v6, v11, v8

    .line 1381
    :cond_e
    invoke-static {v4, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 1383
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1384
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1385
    invoke-static {v4, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1386
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1387
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, -0x1

    if-lez v5, :cond_11

    .line 1390
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v8, v5, [I

    :goto_1
    if-ge v2, v5, :cond_10

    .line 1392
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1394
    :cond_10
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v2

    goto :goto_2

    :cond_11
    move v2, v6

    .line 1398
    :goto_2
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    if-eqz v5, :cond_12

    .line 1399
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSendMessageRequest, params.mGroupCcList="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v5

    .line 1401
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCcParticipantsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 1403
    :cond_12
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1404
    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1405
    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1407
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1408
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1409
    invoke-static {v4, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1410
    invoke-static {v4, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1411
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1413
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 1414
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1417
    :cond_13
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    if-eqz p1, :cond_14

    .line 1418
    invoke-static {v4, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCcParticipants(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1421
    :cond_14
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1423
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1424
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1425
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1427
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->startRequestSendImMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1428
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1429
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1430
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendImMessage;->endRequestSendImMessage(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1432
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1f8

    .line 1433
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2b

    .line 1434
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1435
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1436
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1438
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1f8

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
    .locals 8

    .line 1454
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendMessageRevokeRequest - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 1457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "params are null, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1461
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mOwnImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1462
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mOwnImsi wrong value, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1466
    :cond_1
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mUri:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_2

    .line 1467
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mUri is null, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1471
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1472
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1473
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "uri is empty, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1477
    :cond_3
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1478
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mConversationId wrong value, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1482
    :cond_4
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1483
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "mContributionId wrong value, discarding"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1487
    :cond_5
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1491
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendDispositionNotification(): UserAgent not found."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 1493
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 1497
    :cond_6
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    .line 1499
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v2, 0x0

    invoke-direct {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1501
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mImdnId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 1502
    invoke-virtual {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1503
    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1504
    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 1506
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->startRequestSendMessageRevokeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1507
    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addImdnMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    int-to-long v1, v1

    .line 1508
    invoke-static {v4, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    const/4 v1, 0x1

    .line 1509
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addService(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1510
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1511
    invoke-static {v4, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1512
    invoke-static {v4, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1514
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestSendMessageRevokeRequest;->endRequestSendMessageRevokeRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1516
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x1fd

    .line 1517
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x67

    .line 1518
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1519
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1520
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1522
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v1, 0x1c

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    .line 1523
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1fd

    move-object v2, p0

    .line 1522
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleSetMoreInfoToSipUARequest(Ljava/lang/String;I)V
    .locals 7

    .line 2273
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSetMoreInfoToSipUARequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2278
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    if-nez v6, :cond_1

    .line 2280
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleSetMoreInfoToSipUARequest(): User Agent not found!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2284
    :cond_1
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p2, 0x0

    invoke-direct {v3, p2}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2285
    invoke-virtual {v3, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2287
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->startRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2288
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2289
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestImSetMoreInfoToSipUA;->endRequestImSetMoreInfoToSipUA(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2291
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 p2, 0x20d

    .line 2292
    invoke-static {v3, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 p2, 0x3b

    .line 2293
    invoke-static {v3, p2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2294
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2295
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 2297
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 p2, 0x1d

    .line 2298
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const/16 v2, 0x20d

    move-object v1, p0

    .line 2297
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleStartFtMediaRequest(I)V
    .locals 8

    .line 2065
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFtMediaRequest(): file transdfer session handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    .line 2069
    iget v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2071
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartFtMediaRequest(): UserAgent not found. UaHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    .line 2073
    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 2074
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2080
    :cond_1
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2082
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->startRequestStartMedia(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v0, p1

    .line 2083
    invoke-static {v4, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2084
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartMedia;->endRequestStartMedia(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2086
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x22a

    .line 2087
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2a

    .line 2088
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2089
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2090
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 2092
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x22a

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleStartFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1884
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartFtSessionRequest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mOwnImsi:Ljava/lang/String;

    const-string v3, "ft"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1888
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v3, "handleStartFtSessionRequest(): UserAgent not found."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    .line 1890
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1891
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 1897
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;-><init>()V

    .line 1898
    iget v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    .line 1899
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartCallback:Landroid/os/Message;

    .line 1900
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    iput-object v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mStartSessionHandleCallback:Landroid/os/Message;

    .line 1901
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    iput v3, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    .line 1902
    iget-object v3, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingFtSessions:Ljava/util/Map;

    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1905
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1907
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 1908
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 1909
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 1910
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v8}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v8

    .line 1911
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 1912
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 1913
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    invoke-static {v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 1914
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 1915
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 1919
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    const-string v15, ""

    if-eqz v14, :cond_4

    .line 1920
    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 1921
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamFrom()Lcom/sec/ims/util/ImsUri;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    :cond_2
    move-object v14, v15

    .line 1920
    :goto_0
    invoke-virtual {v2, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1922
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1923
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamTo()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v15

    .line 1922
    :goto_1
    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move/from16 v16, v3

    .line 1924
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;->getSpamDate()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    move-object/from16 v17, v5

    move-object/from16 v26, v15

    move v15, v14

    move/from16 v14, v16

    move-object/from16 v16, v26

    goto :goto_2

    .line 1926
    :cond_4
    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 1927
    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 1928
    invoke-virtual {v2, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v16

    move-object/from16 v17, v5

    move/from16 v26, v14

    move v14, v3

    move/from16 v3, v16

    move-object/from16 v16, v15

    move/from16 v15, v26

    .line 1930
    :goto_2
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    move/from16 v18, v13

    .line 1931
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    .line 1932
    invoke-static {v13}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v13

    .line 1931
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v13

    move/from16 v19, v13

    .line 1933
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    invoke-static {v13}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    move/from16 v20, v13

    .line 1937
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    const/16 v21, -0x1

    if-eqz v13, :cond_5

    .line 1938
    invoke-virtual {v13}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    move/from16 v22, v5

    move/from16 v5, v21

    goto :goto_5

    .line 1940
    :cond_5
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [I

    move/from16 v22, v5

    .line 1942
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/16 v23, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/ims/util/ImsUri;

    add-int/lit8 v25, v23, 0x1

    if-eqz v24, :cond_6

    .line 1943
    invoke-virtual/range {v24 .. v24}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v26, v24

    move-object/from16 v24, v5

    move-object/from16 v5, v26

    goto :goto_4

    :cond_6
    move-object/from16 v24, v5

    move-object/from16 v5, v16

    :goto_4
    invoke-virtual {v2, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    aput v5, v13, v23

    move-object/from16 v5, v24

    move/from16 v23, v25

    goto :goto_3

    .line 1945
    :cond_7
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->createReceiversVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    move/from16 v13, v21

    .line 1948
    :goto_5
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1949
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1950
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    const/16 v23, 0x1

    if-eqz v4, :cond_8

    move/from16 v4, v23

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsConference(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1952
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v4, :cond_9

    .line 1953
    invoke-static {v2, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    goto :goto_7

    .line 1955
    :cond_9
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addReceivers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1958
    :goto_7
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 1959
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1961
    :cond_a
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 1962
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1964
    :cond_b
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v4, :cond_c

    .line 1965
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1967
    :cond_c
    iget-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1968
    invoke-static {v2, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1971
    :cond_d
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1973
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1974
    invoke-static {v2, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1975
    invoke-static {v2, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1976
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1977
    iget-wide v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    long-to-int v5, v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1978
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    if-eqz v5, :cond_e

    .line 1979
    iget-wide v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-wide v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1980
    iget-wide v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    goto :goto_8

    :cond_e
    const-wide/16 v5, 0x0

    .line 1982
    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addStart(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1983
    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addEnd(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1985
    :goto_8
    iget v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addTimeDuration(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1987
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1990
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    if-eqz v6, :cond_10

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v7, v8, :cond_10

    .line 1992
    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_f

    .line 1994
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 1995
    invoke-static {v6}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->isTranslationDefined(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1996
    invoke-static {v6}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_f
    move-object/from16 v6, v16

    .line 2000
    :goto_9
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->adjustFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v7

    .line 2001
    invoke-direct {v0, v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 2003
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->startImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2004
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addPath(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2005
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2006
    new-instance v6, Ljava/io/File;

    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->addSize(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2008
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImFileAttr;->endImFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v21

    :cond_10
    move/from16 v6, v21

    .line 2013
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->startReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2014
    invoke-static {v2, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamFrom(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2015
    invoke-static {v2, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamTo(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2016
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->addSpamDate(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2018
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReportMessageHdr;->endReportMessageHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 2019
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    if-eqz v7, :cond_11

    .line 2020
    iget-object v7, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "andleStartFtSessionRequest, mReportMsgParams="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    :cond_11
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2024
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    if-eqz v7, :cond_12

    move/from16 v7, v22

    .line 2025
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    :cond_12
    move/from16 v7, v19

    .line 2028
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    move/from16 v7, v20

    .line 2029
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2030
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 2032
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->startFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2033
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v8, v9, :cond_13

    move/from16 v8, v23

    goto :goto_a

    :cond_13
    const/4 v8, 0x0

    :goto_a
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIsPush(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 2034
    iget-boolean v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIsPublicAccountMsg(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    move/from16 v8, v18

    .line 2035
    invoke-static {v2, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileFingerPrint(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2037
    invoke-static {v2, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addFileAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2039
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    if-eqz v5, :cond_14

    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v9, :cond_14

    .line 2040
    invoke-static {v2, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addIconAttr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2043
    :cond_14
    invoke-static {v2, v7}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2045
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/FtPayloadParam;->endFtPayloadParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2047
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->startRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2048
    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v2, v5, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2049
    invoke-static {v2, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2050
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addReportData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2051
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->addPayload(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2052
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartFtSession;->endRequestStartFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2054
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v3, 0x226

    .line 2055
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v3, 0x2e

    .line 2056
    invoke-static {v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2057
    invoke-static {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2059
    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 2061
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/16 v1, 0x226

    move-object/from16 v0, p0

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 642
    iget-object v2, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStartImSessionRequest: params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    const-string v4, ""

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    .line 646
    iget-object v2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move v6, v5

    goto :goto_0

    :cond_0
    move-object v2, v4

    const/4 v6, 0x1

    .line 651
    :goto_0
    iget-object v7, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_1

    .line 653
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleStartImSessionRequest(): UserAgent not found."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    .line 658
    :cond_1
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 659
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleStartImSessionRequest(): receiver.size() = 0 !"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v6, 0x1

    goto :goto_2

    .line 661
    :cond_2
    iget-object v8, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 662
    iget-object v6, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v8, "handleStartImSessionRequest(): null receiver!"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v6, :cond_7

    .line 667
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 668
    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 669
    iput-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    .line 671
    :cond_4
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_5

    .line 672
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v5, v6, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/ims/util/ImsUri;Ljava/lang/Object;)V

    invoke-virtual {v0, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 674
    iput-object v4, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    .line 676
    :cond_5
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    if-eqz v3, :cond_6

    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    if-eqz v3, :cond_6

    .line 677
    new-instance v5, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v6, v7, v8}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    invoke-direct {v5, v2, v6}, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    invoke-virtual {v0, v3, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 679
    iget-object v0, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    iput-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    :cond_6
    return-void

    .line 686
    :cond_7
    new-instance v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mDedicatedBearerCallback:Landroid/os/Message;

    .line 687
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v14

    const/4 v13, 0x0

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;-><init>(Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;ZI)V

    .line 688
    iget-object v8, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mPendingSessions:Ljava/util/Map;

    invoke-interface {v8, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    new-instance v8, Lcom/google/flatbuffers/FlatBufferBuilder;

    invoke-direct {v8, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 693
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    .line 694
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getImsUriOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v9

    .line 693
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->createReceiversVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    .line 695
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 696
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 697
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 698
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    invoke-direct {v0, v12}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 699
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 700
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 701
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 702
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 703
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    move-object v3, v4

    :goto_3
    invoke-virtual {v8, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 705
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->startBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 706
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 707
    iget-boolean v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsConference(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 708
    iget-boolean v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addIsChatbotParticipant(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 710
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSdpContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 712
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addReceivers(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 715
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 716
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addUserAlias(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 718
    :cond_9
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 719
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 721
    :cond_a
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 722
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addConversationId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 724
    :cond_b
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 725
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addInReplyToContributionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 727
    :cond_c
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 728
    invoke-static {v8, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addSessionReplaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 731
    :cond_d
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 732
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addServiceId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 735
    :cond_e
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    if-eqz v2, :cond_f

    .line 736
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->addChatMode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 739
    :cond_f
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/BaseSessionData;->endBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 742
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    if-eqz v3, :cond_10

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    .line 743
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v0, v8, v3, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v3

    .line 744
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->createAcceptTypesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v3

    goto :goto_4

    :cond_10
    const/4 v3, -0x1

    .line 746
    :goto_4
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    if-eqz v9, :cond_11

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_11

    .line 747
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v0, v8, v9, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getStringOffsetArray(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/lang/Iterable;I)[I

    move-result-object v9

    .line 748
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->createAcceptWrappedTypesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v9

    goto :goto_5

    :cond_11
    const/4 v9, -0x1

    .line 751
    :goto_5
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 753
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->startImSessionParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 754
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsRejoin(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 755
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsClosedGroupchat(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 756
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsInviteforbye(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 757
    iget-boolean v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsGeolocationPush:Z

    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsGeolocationPush(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 760
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    if-eqz v11, :cond_12

    .line 761
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addSubject(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 764
    :cond_12
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    if-eqz v10, :cond_13

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_13

    .line 765
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addAcceptTypes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 768
    :cond_13
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    .line 769
    invoke-static {v8, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addIsExtension(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 772
    :cond_14
    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    if-eqz v3, :cond_15

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 773
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addAcceptWrappedTypes(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 776
    :cond_15
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->addBaseSessionData(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 777
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImSessionParam;->endImSessionParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v2

    .line 780
    iget-object v1, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    if-eqz v1, :cond_25

    .line 784
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 785
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 786
    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "charset="

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 787
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ";charset=UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 790
    :cond_16
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    if-eqz v9, :cond_17

    .line 791
    const-string v9, "maap"

    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 792
    const-string v10, "<http://www.gsma.com/rcs/maap/>"

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 793
    const-string v11, "Traffic-Type"

    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 794
    iget-object v12, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    .line 796
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 797
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 798
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 799
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    .line 800
    filled-new-array {v11}, [I

    move-result-object v11

    .line 801
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v11

    .line 803
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 804
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 805
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 806
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 807
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_17
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    const-string v10, "Reference-Type"

    const-string v11, "Reference-ID"

    if-nez v9, :cond_18

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-nez v9, :cond_18

    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v9, :cond_1c

    .line 810
    :cond_18
    const-string v9, "Extended-RCS"

    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 811
    const-string v12, "<http://www.tta.or.kr>"

    invoke-virtual {v8, v12}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v12

    const/4 v13, 0x0

    .line 821
    new-array v14, v13, [I

    .line 823
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    if-eqz v13, :cond_19

    .line 824
    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 825
    iget-object v15, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v8, v15}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v15

    .line 827
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 828
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 829
    invoke-static {v8, v15}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 830
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v13

    const/4 v15, 0x1

    .line 831
    invoke-static {v14, v15}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 832
    array-length v5, v14

    sub-int/2addr v5, v15

    aput v13, v14, v5

    .line 834
    :cond_19
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    if-eqz v5, :cond_1a

    .line 835
    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 836
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 838
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 839
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 840
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 841
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 842
    array-length v13, v14

    const/4 v15, 0x1

    add-int/2addr v13, v15

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 843
    array-length v13, v14

    sub-int/2addr v13, v15

    aput v5, v14, v13

    .line 845
    :cond_1a
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    if-eqz v5, :cond_1b

    .line 846
    const-string v5, "Reference-Value"

    invoke-virtual {v8, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 847
    iget-object v13, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v8, v13}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v13

    .line 849
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 850
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 851
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 852
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 853
    array-length v13, v14

    const/4 v15, 0x1

    add-int/2addr v13, v15

    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v14

    .line 854
    array-length v13, v14

    sub-int/2addr v13, v15

    aput v5, v14, v13

    .line 857
    :cond_1b
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    .line 859
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 860
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 861
    invoke-static {v8, v12}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 862
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 863
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    :cond_1c
    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    if-nez v5, :cond_1e

    iget-object v5, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    if-eqz v5, :cond_1d

    goto :goto_6

    :cond_1d
    const/4 v12, 0x0

    goto :goto_7

    .line 866
    :cond_1e
    :goto_6
    const-string/jumbo v5, "rcs"

    invoke-virtual {v8, v5}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 867
    const-string v9, "<http://www.gsma.com>"

    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    const/4 v12, 0x0

    .line 874
    new-array v13, v12, [I

    .line 876
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    if-eqz v14, :cond_1f

    .line 877
    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 878
    iget-object v14, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    invoke-virtual {v8, v14}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v14

    .line 880
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 881
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 882
    invoke-static {v8, v14}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 883
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v11

    const/4 v14, 0x1

    .line 884
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    .line 885
    array-length v15, v13

    sub-int/2addr v15, v14

    aput v11, v13, v15

    .line 887
    :cond_1f
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    if-eqz v11, :cond_20

    .line 888
    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 889
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 891
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->startPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 892
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addKey(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 893
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->addValue(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 894
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace_/Pair;->endPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v10

    .line 895
    array-length v11, v13

    const/4 v14, 0x1

    add-int/2addr v11, v14

    invoke-static {v13, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    .line 896
    array-length v11, v13

    sub-int/2addr v11, v14

    aput v10, v13, v11

    .line 899
    :cond_20
    invoke-static {v8, v13}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->createHeadersVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v10

    .line 901
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->startCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 902
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addName(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 903
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 904
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->addHeaders(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 905
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/CpimNamespace;->endCpimNamespace(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    :goto_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_22

    .line 908
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v9, v5, [I

    :goto_8
    if-ge v12, v5, :cond_21

    .line 910
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 912
    :cond_21
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->createCpimNamespacesVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v5

    goto :goto_9

    :cond_22
    const/4 v5, -0x1

    .line 915
    :goto_9
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    iput-object v9, v6, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mFirstMessageCallback:Landroid/os/Message;

    .line 916
    iget-object v6, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    .line 917
    invoke-static {v6}, Lcom/sec/internal/ims/translate/ResipTranslatorCollection;->translateFwImdnNoti(Ljava/util/Set;)[I

    move-result-object v6

    .line 916
    invoke-static {v8, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->createNotiVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    .line 918
    iget-object v9, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v9

    .line 919
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    if-eqz v10, :cond_23

    invoke-static {v10}, Lcom/sec/internal/helper/Iso8601;->formatMillis(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    :cond_23
    invoke-virtual {v8, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v4

    .line 920
    iget-object v10, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    invoke-direct {v0, v10}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v10

    .line 921
    iget-object v11, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v11

    .line 923
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->startImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 924
    invoke-static {v8, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addMessageId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 925
    invoke-static {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addDatetime(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 927
    invoke-static {v8, v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->addNoti(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 928
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImdnParams;->endImdnParams(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 930
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->startImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 931
    invoke-static {v8, v10}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addBody(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 932
    invoke-static {v8, v11}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addContentType(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 933
    invoke-static {v8, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addImdn(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 935
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_24

    .line 936
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->addCpimNamespaces(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 938
    :cond_24
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ImMessageParam;->endImMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    goto :goto_a

    :cond_25
    const/4 v5, -0x1

    .line 941
    :goto_a
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->startRequestStartImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 942
    invoke-virtual {v7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v8, v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addRegistrationHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 943
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addSession(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    if-eqz v1, :cond_26

    .line 946
    invoke-static {v8, v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->addMessageParam(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 949
    :cond_26
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestStartImSession;->endRequestStartImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 951
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v2, 0x1f5

    .line 952
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v2, 0x27

    .line 953
    invoke-static {v8, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 954
    invoke-static {v8, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 955
    invoke-static {v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v3

    .line 957
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleStartImSessionRequest(): Armaan: sending to stack!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/16 v1, 0x1f5

    move-object/from16 v0, p0

    move-object v2, v8

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onSubscribeGroupChatInfo(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;)V
    .locals 7

    .line 1109
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribeGroupChatInfo() uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1113
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onSubscribeGroupChatList(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1117
    :cond_0
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscribeGroupChatInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1119
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 1121
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->startRequestGroupInfoSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1122
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v3, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1123
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1124
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->addUri(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1125
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupInfoSubscribe;->endRequestGroupInfoSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1127
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x231

    .line 1128
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x38

    .line 1129
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1130
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1131
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1133
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 1134
    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const/16 v2, 0x231

    move-object v1, p0

    .line 1133
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private onSubscribeGroupChatList(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;)V
    .locals 7

    .line 1080
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSubscribeGroupChatList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getOwnImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v6

    if-nez v6, :cond_0

    .line 1084
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onSubscribeGroupChatList(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1088
    :cond_0
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1089
    const-string v0, "SubscribeGroupChatList"

    invoke-virtual {v3, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1091
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->startRequestGroupListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1092
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->getHandle()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v3, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1093
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addSubscriptionId(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1094
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getVersion()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v3, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addVersion(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1095
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;->getIncreaseMode()Z

    move-result p1

    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->addIsIncrease(Lcom/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 1096
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestGroupListSubscribe;->endRequestGroupListSubscribe(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1098
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x230

    .line 1099
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x37

    .line 1100
    invoke-static {v3, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1101
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1102
    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 1104
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const/16 v2, 0x230

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private parseStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2427
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private sendImCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;)V
    .locals 8

    .line 1138
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mStopParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    if-nez v0, :cond_0

    .line 1140
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendImCancelRequestToStack(): null stop params!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1144
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_2

    .line 1147
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendImCancelRequestToStack: UserAgent not found. UaHandle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object p1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_1

    .line 1149
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mRawHandle:Ljava/lang/Object;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1150
    iput-object p0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    :cond_1
    return-void

    .line 1155
    :cond_2
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1157
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v1, :cond_3

    .line 1158
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->getReasonText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    .line 1161
    :goto_0
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->startReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1162
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mSessionStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v2, :cond_4

    .line 1163
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->getCauseCode()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1164
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1166
    :cond_4
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/ReasonHdr;->endReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 1168
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->startRequestCloseImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1169
    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mSessionHandle:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->addSessionId(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1170
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->addReasonHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1171
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCloseImSession;->endRequestCloseImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1173
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v1, 0x1f7

    .line 1174
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v1, 0x29

    .line 1175
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1176
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1177
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 1179
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v1, 0x3

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;->mCallback:Landroid/os/Message;

    .line 1180
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x1f7

    move-object v2, p0

    .line 1179
    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V
    .locals 6

    .line 2379
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v5

    if-nez v5, :cond_0

    .line 2381
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 2384
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method private sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0

    if-nez p5, :cond_0

    .line 2389
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendRequestToStack(): UserAgent not found."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2392
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;-><init>(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;)V

    invoke-virtual {p5, p0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipStackRequest;)V

    return-void
.end method


# virtual methods
.method public acceptFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
    .locals 1

    const/4 v0, 0x5

    .line 291
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
    .locals 1

    const/4 v0, 0x2

    .line 271
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
    .locals 1

    const/16 v0, 0xc

    .line 371
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    const/4 v0, 0x6

    .line 301
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupAlias(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
    .locals 1

    const/16 v0, 0x17

    .line 341
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupChatIcon(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
    .locals 1

    const/16 v0, 0x1e

    .line 336
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupChatLeader(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
    .locals 1

    const/16 v0, 0x13

    .line 326
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public changeGroupChatSubject(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
    .locals 1

    const/16 v0, 0x16

    .line 331
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public extendToGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .locals 1

    const/16 v0, 0xd

    .line 377
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected getImsiByUserAgent(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/lang/String;
    .locals 0

    .line 2556
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2557
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUserAgent()Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 2551
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2552
    const-string v0, "im"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 2546
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2547
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 1

    .line 2536
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2537
    const-string v0, "im"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method protected getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 2541
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2542
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UserAgent;
    .locals 0

    .line 2531
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 2532
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 637
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string p1, "handleMessage: Undefined message."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 627
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRequestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V

    goto/16 :goto_0

    .line 632
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleReportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V

    goto/16 :goto_0

    .line 572
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatIconRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V

    goto/16 :goto_0

    .line 623
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSetMoreInfoToSipUARequest(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 547
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V

    goto/16 :goto_0

    .line 619
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->onSubscribeGroupChatInfo(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;)V

    goto/16 :goto_0

    .line 616
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->onSubscribeGroupChatList(Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;)V

    goto/16 :goto_0

    .line 576
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatAliasRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V

    goto/16 :goto_0

    .line 568
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatSubjectRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V

    goto/16 :goto_0

    .line 555
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRemoveParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V

    goto/16 :goto_0

    .line 604
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    goto/16 :goto_0

    .line 564
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleChangeGroupChatLeaderRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V

    goto/16 :goto_0

    .line 596
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartFtMediaRequest(I)V

    goto/16 :goto_0

    .line 600
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    goto/16 :goto_0

    .line 608
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendFtDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_0

    .line 560
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    goto :goto_0

    .line 551
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAddParticipantsRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V

    goto :goto_0

    .line 543
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendDispositionNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_0

    .line 539
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V

    goto :goto_0

    .line 580
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V

    goto :goto_0

    .line 592
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 588
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleCancelFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V

    goto :goto_0

    .line 584
    :pswitch_17
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAcceptFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V

    goto :goto_0

    .line 523
    :pswitch_18
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleSendMessageRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V

    goto :goto_0

    .line 535
    :pswitch_19
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleCloseImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    goto :goto_0

    .line 531
    :pswitch_1a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleAcceptImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V

    goto :goto_0

    .line 527
    :pswitch_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->handleStartImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V

    :goto_0
    :pswitch_1c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_1c
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected handleRejectFtSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 10

    .line 2222
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectFtSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 2225
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2227
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRejectFtSessionRequest: no session in map, return reject failure id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz p1, :cond_0

    .line 2229
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 2234
    :cond_1
    iput-object p1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    .line 2236
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 2238
    :goto_0
    iget v3, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_4

    .line 2240
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleRejectFtSessionRequest(): User Agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_3

    .line 2242
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2243
    iput-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_3
    return-void

    .line 2248
    :cond_4
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 p1, 0x0

    invoke-direct {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2249
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p1

    .line 2252
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2253
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2254
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2255
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2257
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2258
    iget v1, v1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v1, v1

    invoke-static {v6, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2259
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result v0

    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2260
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2261
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2263
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x228

    .line 2264
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2f

    .line 2265
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2266
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2267
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 2269
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/16 v5, 0x228

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method protected handleRejectImSessionRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
    .locals 10

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRejectImSessionRequest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mRawHandle:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1016
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessions:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 1018
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleRejectImSessionRequest: no session in map, return reject failure"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_0

    .line 1020
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v2, v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1021
    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    :cond_0
    return-void

    .line 1026
    :cond_1
    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    iput-object v4, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mRejectCallback:Landroid/os/Message;

    .line 1027
    iget v2, v2, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$ImSession;->mUaHandle:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v9

    if-nez v9, :cond_3

    .line 1029
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "handleRejectImSessionRequest: User Agent not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v1, :cond_2

    .line 1031
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-direct {v2, v0, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/RejectImSessionResult;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1032
    iput-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mCallback:Landroid/os/Message;

    :cond_2
    return-void

    .line 1038
    :cond_3
    new-instance v6, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 1039
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1041
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 1042
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v6, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1043
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1044
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    .line 1047
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->startRequestRejectImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    int-to-long v1, v1

    .line 1048
    invoke-static {v6, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1049
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->getSipCode()I

    move-result p1

    int-to-long v1, p1

    invoke-static {v6, v1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 1050
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1051
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestRejectImSession;->endRequestRejectImSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 1053
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x1fc

    .line 1054
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x33

    .line 1055
    invoke-static {v6, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 1056
    invoke-static {v6, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 1057
    invoke-static {v6}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v7

    .line 1059
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const/16 v5, 0x1fc

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method public registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 2507
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 2497
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 2522
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->add(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForGroupChatInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2457
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForGroupChatListUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2447
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 477
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForImIncomingSession(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 456
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2467
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 2477
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 497
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method public rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
    .locals 1

    const/4 v0, 0x7

    .line 296
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
    .locals 1

    const/16 v0, 0x11

    .line 281
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
    .locals 1

    const/16 v0, 0x15

    .line 321
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
    .locals 1

    const/16 v0, 0x1f

    .line 2517
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
    .locals 1

    const/16 v0, 0x20

    .line 2492
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendCallback(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    const/4 p0, 0x0

    .line 2400
    invoke-static {p1, p2, p0}, Lcom/sec/internal/helper/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lcom/sec/internal/helper/AsyncResult;

    .line 2401
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public sendCanceledNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/16 v0, 0xa

    .line 361
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
    .locals 1

    const/16 v0, 0x9

    .line 346
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/16 v0, 0xa

    .line 351
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/16 v0, 0xa

    .line 356
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected sendFtCancelRequestToStack(Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;)V
    .locals 8

    .line 2180
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    if-nez v0, :cond_0

    .line 2182
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendFtCancelRequestToStack(): null reject params!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2186
    :cond_0
    iget v1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mUaHandle:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->getUserAgent(I)Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    move-result-object v7

    if-nez v7, :cond_2

    .line 2188
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendFtCancelRequestToStack(): User agent not found!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    if-eqz v0, :cond_1

    .line 2190
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/result/FtResult;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendCallback(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2191
    iget-object p0, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mCancelParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;

    iput-object v4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mCallback:Landroid/os/Message;

    :cond_1
    return-void

    .line 2196
    :cond_2
    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;->mRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 2197
    :goto_0
    new-instance v4, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 2198
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->parseStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 2201
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->startWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2202
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getWarningCode()I

    move-result v2

    invoke-static {v4, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2203
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2204
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/WarningHdr;->endWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v1

    .line 2206
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->startRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 2207
    iget p1, p1, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mHandle:I

    int-to-long v2, p1

    invoke-static {v4, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSessionHandle(Lcom/google/flatbuffers/FlatBufferBuilder;J)V

    .line 2208
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->getSipCode()I

    move-result p1

    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addSipCode(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2209
    invoke-static {v4, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->addWarningHdr(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2210
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/RequestCancelFtSession;->endRequestCancelFtSession(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p1

    .line 2212
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->startRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    const/16 v0, 0x228

    .line 2213
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqid(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    const/16 v0, 0x2f

    .line 2214
    invoke-static {v4, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReqType(Lcom/google/flatbuffers/FlatBufferBuilder;B)V

    .line 2215
    invoke-static {v4, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->addReq(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 2216
    invoke-static {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request;->endRequest(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 2218
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mStackResponseHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImResponseHandler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const/16 v3, 0x228

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->sendRequestToStack(ILcom/google/flatbuffers/FlatBufferBuilder;ILandroid/os/Message;Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    return-void
.end method

.method public sendFtDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/16 v0, 0xe

    .line 311
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFtDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
    .locals 1

    const/16 v0, 0xe

    .line 316
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
    .locals 1

    const/16 v0, 0x8

    .line 306
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendImMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
    .locals 1

    const/4 v0, 0x4

    .line 286
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
    .locals 1

    const/16 v0, 0x1c

    .line 366
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setFtMessageId(Ljava/lang/Object;I)V
    .locals 3

    .line 507
    check-cast p1, Ljava/lang/Integer;

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFtMessageId():  sessionHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", msgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mFtSessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;

    if-nez v0, :cond_0

    .line 513
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setFtMessageId(): no session in map, id = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 516
    :cond_0
    iput p2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler$FtSession;->mId:I

    return-void
.end method

.method public setMoreInfoToSipUserAgent(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x1d

    const/4 v1, 0x0

    .line 2487
    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
    .locals 1

    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
    .locals 1

    const/4 v0, 0x3

    .line 276
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public subscribeGroupChatInfo(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 2440
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribeGroupChatInfo() uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2441
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    const/16 p1, 0x19

    .line 2442
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public subscribeGroupChatList(IZLjava/lang/String;)V
    .locals 2

    .line 2432
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/BaseHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeGroupChatList()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatListParams;-><init>(IZLjava/lang/String;)V

    const/16 p1, 0x18

    .line 2435
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public unRegisterForGroupChatInfoUpdate(Landroid/os/Handler;)V
    .locals 0

    .line 2462
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatInfoRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unRegisterForGroupChatListUpdate(Landroid/os/Handler;)V
    .locals 0

    .line 2452
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mGroupChatListRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterAllFileTransferProgress()V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V
    .locals 0

    .line 2512
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeNotifyRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V
    .locals 0

    .line 2502
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mChatbotAnonymizeResponseRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V
    .locals 0

    .line 2527
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mReportChatbotAsSpamRespRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForComposingNotification(Landroid/os/Handler;)V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mComposingRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mConferenceInfoUpdateRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingFileTransferRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImIncomingMessage(Landroid/os/Handler;)V
    .locals 0

    .line 492
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingMessageRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImIncomingSession(Landroid/os/Handler;)V
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mIncomingSessionRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImSessionClosed(Landroid/os/Handler;)V
    .locals 0

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionClosedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImSessionEstablished(Landroid/os/Handler;)V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSessionEstablishedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImdnFailed(Landroid/os/Handler;)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImdnNotification(Landroid/os/Handler;)V
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->unregisterForImdnNotification(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImdnResponse(Landroid/os/Handler;)V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mImdnHandler:Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipImdnHandler;->unregisterForImdnResponse(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMessageFailed(Landroid/os/Handler;)V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageFailedRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMessageRevokeResponse(Landroid/os/Handler;)V
    .locals 0

    .line 2472
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V
    .locals 0

    .line 2482
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mSendMessageRevokeResponseRegistransts:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForTransferProgress(Landroid/os/Handler;)V
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipImHandler;->mTransferProgressRegistrants:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
