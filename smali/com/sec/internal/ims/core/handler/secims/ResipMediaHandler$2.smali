.class Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;
.super Ljava/lang/Object;
.source "ResipMediaHandler.java"

# interfaces
.implements Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1700(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->-$$Nest$fputmSveConnected(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->-$$Nest$fputmSveConnecting(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V

    .line 371
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/16 v0, 0x12d

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->access$1600(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sve disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->-$$Nest$fputmSveConnected(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V

    .line 362
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;->-$$Nest$fputmSveConnecting(Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;Z)V

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler$2;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipMediaHandler;

    const/16 v0, 0x12c

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
