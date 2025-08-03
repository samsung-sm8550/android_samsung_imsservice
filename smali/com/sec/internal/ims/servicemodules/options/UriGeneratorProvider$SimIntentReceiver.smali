.class Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UriGeneratorProvider.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 180
    const-string/jumbo p1, "ss"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sim state intent received - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const-string v0, "LOADED"

    if-eqz p2, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 191
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 192
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Update mSimManager when iccState is \'LOADED\' "

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 195
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->-$$Nest$fgetmSimEventListener(Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;)Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimEventListener;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    .line 200
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 201
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider$SimIntentReceiver;->this$0:Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 202
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object p0

    .line 201
    invoke-virtual {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/options/UriGeneratorProvider;->extractOwnAreaCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
