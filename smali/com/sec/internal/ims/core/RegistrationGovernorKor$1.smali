.class Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorKor.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 199
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 200
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "com.sec.internal.ims.imsservice.dm_polling_timeout"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "com.sec.android.UsimRegistrationKOR.UsimDownload.end"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "com.samsung.intent.action.regist_reject"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "com.samsung.intent.action.LTE_REJECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 222
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandleNewOutgoingCallIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    goto :goto_1

    .line 203
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandlePeriodicPollingTimeoutIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    goto :goto_1

    .line 225
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandleBootCompletedIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    goto :goto_1

    .line 212
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandleUsimDownloadEndIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    goto :goto_1

    .line 219
    :pswitch_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandleWapPushDmNotiReceivedIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;)V

    goto :goto_1

    .line 209
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandleAirplaneModeIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V

    goto :goto_1

    .line 206
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-static {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->-$$Nest$mhandleFlightModeIntent(Lcom/sec/internal/ims/core/RegistrationGovernorKor;Landroid/content/Intent;)V

    goto :goto_1

    .line 216
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorKor$1;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorKor;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationGovernorKor;->handleNwRejectIntent(Landroid/content/Intent;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a027778 -> :sswitch_8
        -0x6ca01bd5 -> :sswitch_7
        -0x54ce76ff -> :sswitch_6
        -0x402b4235 -> :sswitch_5
        -0x3f7f7392 -> :sswitch_4
        -0x362f2365 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x53922511 -> :sswitch_1
        0x714f24ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
