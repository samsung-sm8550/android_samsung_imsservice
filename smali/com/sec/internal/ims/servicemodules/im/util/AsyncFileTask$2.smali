.class Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncFileTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;


# direct methods
.method public static synthetic $r8$lambda$5Q7duXJ8g9c6cc-hpr7phOhLWkA(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;->lambda$done$0()V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method

.method private synthetic lambda$done$0()V
    .locals 2

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->-$$Nest$mpostIfNotInvoked(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->-$$Nest$mpostIfNotInvoked(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 89
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;->this$0:Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;->-$$Nest$fgetmHandler(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/util/AsyncFileTask$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
