.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;
.super Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;
.source "MultimediaMessagingSessionImpl.java"


# static fields
.field private static final ENRICHED_CALL_PREFIX:Ljava/lang/String; = "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma."

.field static final LOG_TAG:Ljava/lang/String; = "MMessagingSessionImpl"


# instance fields
.field private final mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

.field private final mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession$Stub;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    .line 62
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    return-void
.end method

.method private static translateErrorCode(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 1

    .line 259
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 287
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 285
    :pswitch_0
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVER_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 283
    :pswitch_1
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_NOT_IMPLEMENTED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 281
    :pswitch_2
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REMOTE_USER_INVALID:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 279
    :pswitch_3
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQUEST_PENDING:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 277
    :pswitch_4
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_NOT_ACCEPTABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 275
    :pswitch_5
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECTED_BY_TIMEOUT:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 273
    :pswitch_6
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_USER_CALL_BLOCK:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 271
    :pswitch_7
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_SERVICE_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 269
    :pswitch_8
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_REQ_TERMINATED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 267
    :pswitch_9
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BAD_REQUEST:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 265
    :pswitch_a
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_TEMP_UNAVAILABLE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 263
    :pswitch_b
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_DECLINE:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    .line 261
    :pswitch_c
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->REJECT_REASON_BUSY:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static translateServiceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 154
    invoke-static {p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v0, "+g.3gpp.icsi-ref=\"urn%3Aurn-7%3A3gpp-service.ims.icsi.gsma."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "gsma"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public abortSession()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mypid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " called abortSession"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v1, "MMessagingSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->abortSession(Ljava/lang/String;)V

    return-void
.end method

.method public acceptInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mypid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " called acceptInvitation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    const-string v1, "MMessagingSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->acceptSession(Z)V

    return-void
.end method

.method public flushMessages()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public getDirection()Lcom/gsma/services/rcs/RcsService$Direction;
    .locals 1

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_0

    .line 108
    sget-object p0, Lcom/gsma/services/rcs/RcsService$Direction;->OUTGOING:Lcom/gsma/services/rcs/RcsService$Direction;

    return-object p0

    .line 110
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/RcsService$Direction;->INCOMING:Lcom/gsma/services/rcs/RcsService$Direction;

    return-object p0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;
    .locals 3

    .line 119
    sget-object v0, Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    .line 120
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionClosedEvent()Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->translateErrorCode(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getReasonCode, event.mReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 124
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " reasonCode="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    const-string v1, "MMessagingSessionImpl"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 139
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getServiceId()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getServiceId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->translateServiceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;
    .locals 2

    .line 177
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$ImSession$SessionState:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDetailedState()Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 p0, 0x3

    if-eq v0, p0, :cond_2

    const/4 p0, 0x4

    if-eq v0, p0, :cond_1

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    .line 197
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->FAILED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 195
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 193
    :cond_1
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ABORTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 191
    :cond_2
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->STARTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 185
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_4

    .line 186
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INITIATING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 188
    :cond_4
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ACCEPTING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 179
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_6

    .line 180
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INITIATING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0

    .line 182
    :cond_6
    sget-object p0, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INVITED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    return-object p0
.end method

.method public rejectInvitation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mypid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " called rejectInvitation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    const-string v1, "MMessagingSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession()V

    return-void
.end method

.method public rejectInvitation2(Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mypid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " calling uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " called rejectInvitation2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 221
    const-string v0, "MMessagingSessionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->rejectSession()V

    return-void
.end method

.method public sendMessage([BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MMessagingSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->getState()Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    move-result-object v0

    .line 245
    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->INITIATING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->ACCEPTING:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/gsma/services/rcs/extension/MultimediaSession$State;->STARTED:Lcom/gsma/services/rcs/extension/MultimediaSession$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    const-string p1, "Session not started"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSessionModule:Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/MultimediaMessagingSessionImpl;->mSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->sendMultimediaMessage(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method
