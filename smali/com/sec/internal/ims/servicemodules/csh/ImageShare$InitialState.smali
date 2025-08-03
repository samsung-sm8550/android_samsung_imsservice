.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    .line 147
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    if-eq v1, v2, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_1

    const/4 p1, 0x4

    if-eq v1, p1, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v4

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v5, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v7, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v8, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    iget-wide v9, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;J)V

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIncomingPendingState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 206
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_LOW_SPACE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 207
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 208
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmPreRejectedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 187
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 188
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    if-ltz v1, :cond_4

    .line 190
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq p1, v1, :cond_3

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmOutgoingPendingState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 191
    :cond_4
    :goto_0
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 192
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 152
    :cond_5
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_8

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-eqz p1, :cond_8

    .line 159
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iput-wide v4, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 160
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getMaxSize()J

    move-result-wide v8

    cmp-long p1, v8, v6

    if-eqz p1, :cond_7

    cmp-long p1, v4, v8

    if-gez p1, :cond_6

    goto :goto_1

    .line 170
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File size("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") is larger than Max size("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyLimitExceeded(JLcom/sec/ims/util/ImsUri;)V

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 175
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 176
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 163
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 164
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 165
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    iget-wide v6, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    const-string/jumbo v4, "placeholder"

    invoke-direct {v2, v5, v6, v7, v4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;-><init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;Landroid/os/Message;)V

    .line 168
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->startIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshStartSessionParams;)V

    goto :goto_2

    .line 156
    :cond_8
    const-string p1, "filePath must point to a valid file! or fileSize never be to the 0!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyInvalidDataPath(Ljava/lang/String;)V

    .line 180
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 181
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 182
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_2
    return v3
.end method
