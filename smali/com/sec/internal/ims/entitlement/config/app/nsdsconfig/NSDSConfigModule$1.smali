.class Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;
.super Landroid/database/ContentObserver;
.source "NSDSConfigModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Landroid/os/Handler;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 64
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object p1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Setup Wizard is completed"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "device_config_state"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 70
    const-string p2, "deviceconfig_in_progress"

    .line 71
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Duplicate requests are ignored."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;->this$0:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->onDeviceReady()V

    :cond_1
    return-void
.end method
