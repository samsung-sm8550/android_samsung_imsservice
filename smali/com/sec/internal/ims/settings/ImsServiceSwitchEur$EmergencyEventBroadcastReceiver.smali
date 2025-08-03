.class public Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ImsServiceSwitchEur.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ImsServiceSwitchEur["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    iget v0, v0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received EmEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 201
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur$EmergencyEventBroadcastReceiver;->this$0:Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;

    invoke-static {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;->-$$Nest$monEmergencyModeChanged(Lcom/sec/internal/ims/settings/ImsServiceSwitchEur;)V

    return-void
.end method
