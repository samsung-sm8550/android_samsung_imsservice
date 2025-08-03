.class Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;
.super Landroid/database/ContentObserver;
.source "RegistrationObserverManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;Landroid/os/Handler;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    .line 568
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 573
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 574
    const-string p1, "RegiObsMgr"

    const-string v0, "ChatbotAgreementObserver onChange"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    .line 576
    invoke-static {p2}, Lcom/sec/internal/helper/UriUtil;->getSimSlotFromUri(Landroid/net/Uri;)I

    move-result p1

    .line 577
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p2, p2, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez p2, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 582
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 583
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$ChatbotAgreementObserver;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager;->mRegManHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyChatbotAgreementChanged(I)V

    :cond_1
    return-void
.end method
