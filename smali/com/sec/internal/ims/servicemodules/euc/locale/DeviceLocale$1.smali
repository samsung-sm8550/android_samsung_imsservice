.class Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;
.super Ljava/lang/Object;
.source "DeviceLocale.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$ICallback;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/Locale;)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;->-$$Nest$fgetmDeviceLocaleListener(Lcom/sec/internal/ims/servicemodules/euc/locale/DeviceLocale;)Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/locale/IDeviceLocale$IDeviceLocaleListener;->onLocaleChanged(Ljava/util/Locale;)V

    return-void
.end method
