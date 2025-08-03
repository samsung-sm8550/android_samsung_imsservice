.class Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;
.super Ljava/lang/Object;
.source "CmcSAService.java"

# interfaces
.implements Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder$AccessTokenCallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAService;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAService;Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAService;)V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    if-nez p3, :cond_0

    .line 100
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceiveResponse: resultData is null"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mListener:Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;

    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAError;

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;

    const-string/jumbo p3, "resultData is null"

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAError;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSAError$Reason;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAEventListener;->onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAError;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->handleAccessTokenSuccess(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$AccessTokenCallback;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->handleAccessTokenFailure(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method
