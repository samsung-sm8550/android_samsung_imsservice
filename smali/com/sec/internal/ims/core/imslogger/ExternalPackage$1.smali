.class Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;
.super Landroid/content/BroadcastReceiver;
.source "ExternalPackage.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-static {v0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->-$$Nest$fgetmPackageName(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 67
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    :goto_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->-$$Nest$fputmPackageStatus(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;)V

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-static {v0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->-$$Nest$fgetmPackageName(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ExternalPackage$1;->this$0:Lcom/sec/internal/ims/core/imslogger/ExternalPackage;

    invoke-static {p0}, Lcom/sec/internal/ims/core/imslogger/ExternalPackage;->-$$Nest$fgetmPackageStatus(Lcom/sec/internal/ims/core/imslogger/ExternalPackage;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
