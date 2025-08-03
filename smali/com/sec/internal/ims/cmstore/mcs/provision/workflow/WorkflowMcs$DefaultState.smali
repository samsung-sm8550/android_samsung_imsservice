.class Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;
.super Lcom/sec/internal/helper/State;
.source "WorkflowMcs.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v0, "DefaultState, enter"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .locals 1

    .line 366
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v0, "DefaultState, exit"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 10

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v1, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DefaultState, processMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8

    const-string/jumbo v3, "token"

    const/16 v4, 0xa

    const/16 v5, 0xb

    if-eq v0, v4, :cond_2

    const/4 v2, 0x0

    if-eq v0, v5, :cond_0

    move v1, v2

    goto/16 :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object v5

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {v2, v4, v5, p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/cloudrequest/RequestGetUser;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto/16 :goto_0

    .line 348
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v3, "msisdn is null"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 349
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mClientHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    .line 315
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v7, v6, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v6, v6, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "McsUser : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v6, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    .line 317
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string p1, "normal"

    invoke-virtual {p0, v5, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 318
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-boolean v6, v6, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNeedInternalRegistration:Z

    if-eqz v6, :cond_6

    :cond_4
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const-string v2, "mobile_ip"

    invoke-static {v0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fputmRequestType(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRegisteringState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRegCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isRegistrationCodeInvalid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 v0, 0xc

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 324
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 v0, 0xd

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    if-ne v0, v1, :cond_c

    .line 327
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->isValidAccessToken()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 328
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v4, "It\'s already MCS user"

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    .line 330
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmProvisionedState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 331
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    const/16 v0, 0x64

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v0, v2, v4}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    .line 332
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getLastSwVersion()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/McsConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 333
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p1, p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "It\'s Fota Update Case"

    invoke-static {v0, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v5, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 338
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRegisteredState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 339
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 306
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-ne p1, v1, :cond_9

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-result-object p1

    .line 307
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result p1

    if-eq p1, v1, :cond_9

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmRegisteredState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 310
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->-$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 356
    :cond_a
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->handleFailedEvent(II)V

    goto :goto_0

    .line 353
    :cond_b
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;->this$0:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->handleSucceededEvent(ILjava/lang/Object;)V

    :cond_c
    :goto_0
    return v1
.end method
