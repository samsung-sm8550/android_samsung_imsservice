.class Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;
.super Ljava/lang/Object;
.source "SyncHandlerFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLineAdded(Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory$1;->this$0:Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/SyncHandlerFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLineAdded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
