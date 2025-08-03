.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 441
    const-string p1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "package:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 444
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packageStatus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", packageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const-string v0, "com.samsung.ims.smk"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mgetSmkVersion(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;

    move-result-object p1

    .line 457
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$misPreloadedSmk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 458
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mstartDeviceConfigService(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 461
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$mwriteSmkVerData(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_3
    const-string v0, "com.samsung.android.messaging"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 469
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 471
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 472
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 473
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "registerPackageManagerReceiver: notify to CapaModule"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->onPackageUpdated(Ljava/lang/String;)V

    goto :goto_0

    .line 476
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "registerPackageManagerReceiver:CapaModule not available"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method
