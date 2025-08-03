.class Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;
.super Ljava/lang/Object;
.source "DeviceLocale.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

.field final synthetic val$callback:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;->val$callback:Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->-$$Nest$mgetLocale(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Ljava/util/Locale;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->-$$Nest$fgetmHandler(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;

    invoke-direct {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$2;Ljava/util/Locale;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
