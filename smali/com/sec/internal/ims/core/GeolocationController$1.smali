.class Lcom/sec/internal/ims/core/GeolocationController$1;
.super Landroid/database/ContentObserver;
.source "GeolocationController.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;Landroid/os/Handler;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 897
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/GeolocationController;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "dtlocuserconsent"

    const-string v0, "dtlocation"

    const/4 v1, -0x1

    invoke-static {v1, p1, p2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 899
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange- dtlocuserconsent : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GeolocationCon"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 901
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmTelephonyManager(Lcom/sec/internal/ims/core/GeolocationController;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmIsLocationUserConsent(Lcom/sec/internal/ims/core/GeolocationController;)[I

    move-result-object v0

    aget v0, v0, p2

    if-ne v0, p1, :cond_0

    goto :goto_1

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmIsLocationUserConsent(Lcom/sec/internal/ims/core/GeolocationController;)[I

    move-result-object v0

    aput p1, v0, p2

    .line 907
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 908
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_NED:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v1, v0, Lcom/sec/internal/ims/core/GeolocationController;->mIsEpdgAvaialble:[Z

    aget-boolean v1, v1, p2

    if-eqz v1, :cond_2

    .line 912
    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmIsForceEpdgAvailUpdate(Lcom/sec/internal/ims/core/GeolocationController;)[Z

    move-result-object v0

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/GeolocationController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTLocUserConsent onChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") :mIsLocationUserConsent["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v3}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmIsLocationUserConsent(Lcom/sec/internal/ims/core/GeolocationController;)[I

    move-result-object v3

    aget v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$1;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
