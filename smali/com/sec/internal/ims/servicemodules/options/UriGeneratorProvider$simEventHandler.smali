.class Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;
.super Landroid/os/Handler;
.source "UriGeneratorProvider.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Landroid/os/Looper;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    .line 227
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 232
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 240
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "unknown message"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HANDLE_EVENT_ADS_CHANGED: update sim manager!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$simEventHandler;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    :goto_0
    return-void
.end method
