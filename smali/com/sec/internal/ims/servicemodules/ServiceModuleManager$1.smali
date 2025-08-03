.class Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;
.super Landroid/database/ContentObserver;
.source "ServiceModuleManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;Landroid/os/Handler;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 212
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]: config changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceModuleManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->notifyConfigChanged(Ljava/lang/String;I)V

    .line 219
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager$1;->this$0:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
