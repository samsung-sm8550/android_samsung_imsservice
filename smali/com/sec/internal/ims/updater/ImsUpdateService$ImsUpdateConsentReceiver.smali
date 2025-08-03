.class public Lcom/sec/internal/ims/updater/ImsUpdateService$ImsUpdateConsentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsUpdateService.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 331
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 332
    const-string v0, "ImsUpdateConsentReceiver"

    iput-object v0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$ImsUpdateConsentReceiver;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 335
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ImsUpdateConsentReceiver"

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    const-string v1, "com.samsung.ims.action.SHOW_IMS_UPDATE_DIALOG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 340
    const-string/jumbo p0, "onReceive: show consent dialog"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_SHOW_CONSENT:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 342
    :cond_0
    const-string v1, "com.samsung.ims.action.NOTIFICATION_DISMISSED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const-string/jumbo p0, "onReceive: notification dismissed"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_NOTIFICATION_DISMISSED:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 345
    :cond_1
    const-string v1, "com.samsung.ims.action.SHOW_IMS_REBOOT_DIALOG"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    const-string/jumbo p0, "onReceive: show reboot consent"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_REBOOT_CONSENT:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 348
    :cond_2
    const-string v1, "com.samsung.ims.action.REBOOT_NOTIFICATION_DISMISSED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 349
    const-string/jumbo p0, "onReceive: reboot notification dismissed"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object p0, Lcom/sec/internal/ims/updater/ImsUpdateService;->EXTRA_REBOOT_NOTIFICATION_DISMISSED:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    :cond_3
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
