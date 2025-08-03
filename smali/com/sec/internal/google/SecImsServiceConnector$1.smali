.class Lcom/sec/internal/google/SecImsServiceConnector$1;
.super Ljava/lang/Object;
.source "SecImsServiceConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/google/SecImsServiceConnector;


# direct methods
.method constructor <init>(Lcom/sec/internal/google/SecImsServiceConnector;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sec/internal/google/SecImsServiceConnector$1;->this$0:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecImsServiceConnector"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/sec/internal/google/SecImsServiceConnector$1;->this$0:Lcom/sec/internal/google/SecImsServiceConnector;

    check-cast p2, Lcom/sec/internal/imsphone/SecImsService$LocalBinder;

    invoke-virtual {p2}, Lcom/sec/internal/imsphone/SecImsService$LocalBinder;->getService()Lcom/sec/internal/imsphone/SecImsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/google/SecImsServiceConnector;->-$$Nest$fputmService(Lcom/sec/internal/google/SecImsServiceConnector;Lcom/sec/internal/imsphone/SecImsService;)V

    .line 38
    iget-object p0, p0, Lcom/sec/internal/google/SecImsServiceConnector$1;->this$0:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-static {p0}, Lcom/sec/internal/google/SecImsServiceConnector;->-$$Nest$fgetmConnectedLatch(Lcom/sec/internal/google/SecImsServiceConnector;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SecImsServiceConnector"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/sec/internal/google/SecImsServiceConnector$1;->this$0:Lcom/sec/internal/google/SecImsServiceConnector;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->-$$Nest$fputmService(Lcom/sec/internal/google/SecImsServiceConnector;Lcom/sec/internal/imsphone/SecImsService;)V

    return-void
.end method
