.class Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;
.super Ljava/lang/Object;
.source "SmsServiceModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V
    .locals 0

    .line 1664
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmMessagingAppInfoReceiver(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1668
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessagingAppPackageReplaced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmMessagingAppInfoReceiver(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1669
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmTelephonyManager(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1670
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$misRegistered(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1671
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;->this$0:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->-$$Nest$fgetmMessagingAppInfoReceiver(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
