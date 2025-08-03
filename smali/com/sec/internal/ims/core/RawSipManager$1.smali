.class Lcom/sec/internal/ims/core/RawSipManager$1;
.super Landroid/os/Handler;
.source "RawSipManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RawSipManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RawSipManager;Landroid/os/Looper;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager$1;->this$0:Lcom/sec/internal/ims/core/RawSipManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    iget-object v0, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 46
    iget-object p0, p0, Lcom/sec/internal/ims/core/RawSipManager$1;->this$0:Lcom/sec/internal/ims/core/RawSipManager;

    iget p1, p1, Landroid/os/Message;->what:I

    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "message"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rawContents"

    .line 47
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 46
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/sec/internal/ims/core/RawSipManager;->onSipMessageEvent(IILjava/lang/String;[B)V

    return-void
.end method
