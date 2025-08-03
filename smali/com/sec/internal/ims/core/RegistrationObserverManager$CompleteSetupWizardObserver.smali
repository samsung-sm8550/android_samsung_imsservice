.class Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0

    .line 590
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 591
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 596
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mContext:Landroid/content/Context;

    .line 597
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 596
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    .line 598
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CompleteSetupWizard updated : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiObsMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-eqz v1, :cond_1

    .line 601
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$CompleteSetupWizardObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifySetupWizardCompleted()V

    :cond_1
    return-void
.end method
