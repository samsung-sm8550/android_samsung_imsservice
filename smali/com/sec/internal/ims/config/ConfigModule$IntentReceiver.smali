.class Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConfigModule.java"


# static fields
.field private static final ACTION_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field private static final ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final IMS_SERVICE_UP_RESPONSE:Ljava/lang/String; = "com.samsung.android.messaging.IMS_SERVICE_UP_RESPONSE"


# instance fields
.field private mIntentFilter:Landroid/content/IntentFilter;

.field final synthetic this$0:Lcom/sec/internal/ims/config/ConfigModule;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/config/ConfigModule;)V
    .locals 1

    .line 1542
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1543
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    .line 1544
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1545
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.samsung.android.messaging.IMS_SERVICE_UP_RESPONSE"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addActionAirplaneMode()V
    .locals 1

    .line 1578
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 1582
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->mIntentFilter:Landroid/content/IntentFilter;

    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_6

    .line 1550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1553
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1554
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    const/16 p1, 0x17

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 1555
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.messaging.IMS_SERVICE_UP_RESPONSE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 1556
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigModule;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceive: IMS_SERVICE_UP_RESPONSE"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsMessagingReady:Z

    goto :goto_1

    .line 1558
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1559
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez p2, :cond_4

    goto :goto_0

    .line 1563
    :cond_4
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    .line 1564
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {v2}, Lcom/sec/internal/ims/config/ConfigModule;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/config/ConfigModule;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v1, v2, :cond_5

    .line 1565
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iget-object v1, v1, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result p2

    if-lez p2, :cond_3

    .line 1567
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iput-boolean v0, p2, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    goto :goto_0

    .line 1570
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->this$0:Lcom/sec/internal/ims/config/ConfigModule;

    iput-boolean v3, p2, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    goto :goto_0

    :cond_6
    :goto_1
    return-void
.end method
