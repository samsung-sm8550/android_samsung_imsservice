.class Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;
.super Landroid/os/storage/StorageEventListener;
.source "ImsAutoUpdate.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/ImsAutoUpdate;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;->this$0:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 267
    const-string p1, "checking"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "mounted"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 268
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;->this$0:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-static {p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)I

    move-result p2

    const-string/jumbo p3, "onStorageStateChanged : checking -> mounted"

    invoke-static {p1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->-$$Nest$sfgetmStorage()Landroid/os/storage/StorageManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;->this$0:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-static {p2}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->-$$Nest$fgetmStorageListener(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)Landroid/os/storage/StorageEventListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 271
    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;->this$0:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-virtual {p1}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getExternalStorageImsUpdatePath()Ljava/lang/String;

    move-result-object p1

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    invoke-static {}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsAutoUpdate$1;->this$0:Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    invoke-static {p0}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)I

    move-result p0

    const-string p2, "ImsSetup mode. imsservice restart"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    const-string p0, "debug.test.imssetup.restart"

    const-string/jumbo p1, "true"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 276
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    :cond_0
    return-void
.end method
