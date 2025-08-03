.class public Lcom/sec/internal/ims/servicemodules/tapi/service/receiver/PackageEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "package:"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSessionModule()Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 25
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needRegister(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 27
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->registerApp()V

    goto :goto_0

    .line 29
    :cond_2
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->needDeRegister(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 31
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/servicemodules/session/ISessionModule;->deRegisterApp()V

    :cond_3
    :goto_0
    return-void
.end method
