.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ServiceExtensionManager.java"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;)V
    .locals 0

    .line 276
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 277
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 278
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->ctx:Landroid/content/Context;

    return-void
.end method

.method private isJoynClient(Ljava/lang/String;)Z
    .locals 1

    .line 302
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->ctx:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 307
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v0, "gsma.joyn.client"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 282
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "package:"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 285
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->isJoynClient(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->-$$Nest$misPackageProcessed(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->-$$Nest$mauthorise(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->-$$Nest$misPackageProcessed(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 293
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;->mgr:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->-$$Nest$munAuthorise(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
