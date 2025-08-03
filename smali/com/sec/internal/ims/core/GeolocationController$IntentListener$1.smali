.class Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;
.super Landroid/content/BroadcastReceiver;
.source "GeolocationController.java"


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/GeolocationController$IntentListener;)V
    .locals 0

    .line 717
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 720
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GeolocationCon"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string/jumbo v0, "phoneId"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 723
    const-string v3, "com.sec.epdg.EPDG_SSID_CHANGED"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 724
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p1, p1, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 p2, 0x2

    invoke-static {p1, v0, p2}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$misNeedRequestLocation(Lcom/sec/internal/ims/core/GeolocationController;II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 726
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mVoiceRegState:[I

    aget p1, p1, v0

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 727
    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController;->mGeolocation:Lcom/sec/internal/constants/ims/gls/LocationInfo;

    goto/16 :goto_0

    .line 730
    :cond_0
    const-string v3, "com.sec.internal.ims.imsservice.periodic_lu"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 731
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p1, p1, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 732
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {p0, v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$mstartPeriodicLocationUpdate(Lcom/sec/internal/ims/core/GeolocationController;I)V

    goto/16 :goto_0

    .line 733
    :cond_1
    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 734
    iget-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p1, p1, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/GeolocationController;->isLocationServiceEnabled()Z

    move-result p1

    .line 735
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prev loc : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object v0, v0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v0}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmIsLocationEnabled(Lcom/sec/internal/ims/core/GeolocationController;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", cur loc : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p2, p2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {p2}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fgetmIsLocationEnabled(Lcom/sec/internal/ims/core/GeolocationController;)Z

    move-result p2

    if-eq p2, p1, :cond_4

    .line 737
    iget-object p2, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p2, p2, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fputmIsLocationEnabled(Lcom/sec/internal/ims/core/GeolocationController;Z)V

    .line 738
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$fputmIsLocationEnabledToRestore(Lcom/sec/internal/ims/core/GeolocationController;Z)V

    goto :goto_0

    .line 740
    :cond_2
    const-string v0, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 741
    const-string/jumbo p1, "phone"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 742
    const-string v2, "android.telephony.extra.LAST_KNOWN_NETWORK_COUNTRY"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 744
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network country code changed: countryIso: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eq p1, v0, :cond_4

    .line 745
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 749
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 750
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 751
    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener$1;->this$1:Lcom/sec/internal/ims/core/GeolocationController$IntentListener;

    iget-object p0, p0, Lcom/sec/internal/ims/core/GeolocationController$IntentListener;->this$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/GeolocationController;->-$$Nest$monNetworkCountryIsoChanged(Lcom/sec/internal/ims/core/GeolocationController;ILcom/sec/internal/constants/Mno;Ljava/lang/String;)V

    nop

    :cond_4
    :goto_0
    return-void
.end method
