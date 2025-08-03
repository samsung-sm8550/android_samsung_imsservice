.class Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceStub.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 272
    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 273
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ACTION_USER_UNLOCKED received"

    invoke-static {p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 274
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfputmUserUnlocked(Z)V

    .line 275
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$sfgetmIsImsAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 276
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$smexplicitGC()V

    .line 277
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;->this$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->-$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->bootCompleted()V

    .line 279
    :cond_0
    const-string/jumbo p0, "ro.product.first_api_level"

    const/4 p2, 0x0

    invoke-static {p0, p2}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 p2, 0x1c

    if-lt p0, p2, :cond_1

    .line 280
    invoke-static {p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrateToCeStorage(Landroid/content/Context;)V

    .line 282
    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.sec.internal.ims.entitlement.DEVICE_READY_AFTER_BOOTUP"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method
