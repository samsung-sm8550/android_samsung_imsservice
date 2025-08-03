.class Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceConfigAdapter.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 35
    const-string p1, "com.samsung.nsds.action.DEVICE_CONFIG_UPDATED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->-$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DEVICE_CONFIG_UPDATED received"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter$1;->this$0:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    :cond_0
    return-void
.end method
