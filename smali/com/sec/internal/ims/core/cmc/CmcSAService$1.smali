.class Lcom/sec/internal/ims/core/cmc/CmcSAService$1;
.super Ljava/lang/Object;
.source "CmcSAService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSAService;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    iget-object p1, p1, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->onServiceConnected(Landroid/os/IBinder;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onServiceConnected: fail"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->handleServiceDisconnected(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    sget-object p2, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->SERVICE_CONNECTED:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->setState(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V

    .line 59
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->needToGetAccessTokenAfterServiceConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->getAccessTokenInternal()V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onServiceDisconnected to SA"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    iget-object p1, p1, Lcom/sec/internal/ims/core/cmc/CmcSAService;->mSAServiceBinder:Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAServiceBinder;->onServiceDisconnected()V

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAService$1;->this$0:Lcom/sec/internal/ims/core/cmc/CmcSAService;

    const-string/jumbo p1, "onServiceDisconnected"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAService;->handleServiceDisconnected(Ljava/lang/String;)V

    return-void
.end method
