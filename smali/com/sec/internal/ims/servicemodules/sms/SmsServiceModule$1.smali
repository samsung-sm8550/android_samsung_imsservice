.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsServiceModule.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 p1, 0x1

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, 0x7

    const-string v2, "mBroadcastReceiver.onReceive: "

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v5, v4

    goto :goto_1

    :sswitch_0
    const-string v5, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    goto :goto_1

    :sswitch_1
    const-string v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    goto :goto_1

    :sswitch_2
    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_3
    const-string v5, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    move v5, p1

    goto :goto_1

    :sswitch_4
    const-string v5, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move v5, v3

    :goto_1
    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 157
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fputmStorageAvailable(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)V

    .line 158
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 162
    :pswitch_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fputmStorageAvailable(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)V

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object p0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 182
    :pswitch_2
    const-string/jumbo p1, "subscription"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 183
    const-string/jumbo v5, "state"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq p1, v4, :cond_5

    goto/16 :goto_3

    :cond_5
    if-nez p2, :cond_6

    .line 190
    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object p2

    .line 192
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", newCallState: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p1

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmCallState(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_7

    .line 197
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 198
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p1

    aput-boolean v3, p1, v3

    .line 199
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 200
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p1, v3, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    .line 201
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SCBM timer was removed by E911 Call"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmCallState(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;

    move-result-object p0

    aput-object p2, p0, v3

    goto :goto_3

    .line 168
    :pswitch_3
    const-string/jumbo p1, "phone"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 169
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmMaxPhoneCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I

    move-result v4

    if-ge p1, v4, :cond_8

    goto :goto_2

    :cond_8
    move p1, v3

    .line 170
    :goto_2
    const-string v4, "android.telephony.extra.PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 171
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ecmState: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", phoneId: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_9

    .line 172
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p2

    aget-boolean p2, p2, p1

    if-eqz p2, :cond_9

    .line 173
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z

    move-result-object p2

    aput-boolean v3, p2, p1

    .line 174
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v3, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    :cond_9
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x72d34001 -> :sswitch_4
        -0x633bdce1 -> :sswitch_3
        -0x4f0a83a5 -> :sswitch_2
        0x4b3e2663 -> :sswitch_1
        0x79808857 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
