.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;
.super Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;
.source "PushMessage.java"


# static fields
.field private static final ENG_MODE:Z

.field private static final LOG_TAG:Ljava/lang/String; = "PushMessage"

.field private static final PNS_SUBTYPE_CONFIG_CHANGE:Ljava/lang/String; = "config-change"

.field private static final PNS_TYPE_CONN_MGR:Ljava/lang/String; = "conn_mgr"

.field private static final PNS_TYPE_IAM:Ljava/lang/String; = "IAM"

.field private static final PNS_TYPE_NOTIFY:Ljava/lang/String; = "Notify"

.field private static final PNS_TYPE_SES:Ljava/lang/String; = "ENA"


# instance fields
.field public cc:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/CarbonCopyRecipient;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cc"
    .end annotation
.end field

.field private confirmationUrl:Ljava/lang/String;

.field public mMessage:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public pnsSubtype:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-subtype"
    .end annotation
.end field

.field public pnsTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-time"
    .end annotation
.end field

.field public pnsType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pns-type"
    .end annotation
.end field

.field public recipients:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recipients"
    .end annotation
.end field

.field public sender:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Sender;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sender"
    .end annotation
.end field

.field public serviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "serviceName"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->ENG_MODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;-><init>()V

    return-void
.end method

.method private confirmPushMsgDelivery(Landroid/content/Context;)V
    .locals 3

    .line 116
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmPushMsgDelivery: url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const-string v1, "com.samsung.nsds.action.ACTION_CONFIRM_PUSH_MSG_DELIVERY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->mMessage:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;

    iget-object v1, v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage$Message;->imsi:Ljava/lang/String;

    const-string v2, "imsi"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v1, "confirmation_url"

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private getNotificationContent()Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " subtype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationTitle()Ljava/lang/String;
    .locals 2

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsTime:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleConfigChange(Landroid/content/Context;)V
    .locals 1

    .line 109
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "refresh Device config:"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance p0, Landroid/content/Intent;

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/NSDSMultiSimService;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v0, "com.samsung.nsds.action.REFRESH_DEVICE_CONFIG"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, p0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public broadcastFcmMessage(Landroid/content/Context;)V
    .locals 4

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->recipients:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 134
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->recipients:[Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 135
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/Recipient;->uri:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->deriveMsisdnFromRecipientUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.RECEIVED_PUSH_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    const-string v2, "msisdn_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 143
    const-string/jumbo v0, "orig_push_message"

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->origMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v0, "pns_type"

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v0, "pns_subtype"

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v0, "notification_title"

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v0, "notification_content"

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->getNotificationContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "push notification broadcastIntent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-object p0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, v1, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public setConfirmUrl(Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmationUrl:Ljava/lang/String;

    return-void
.end method

.method public setOrigMessage(Ljava/lang/String;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->origMessage:Ljava/lang/String;

    return-void
.end method

.method public shouldBroadcast(Landroid/content/Context;)Z
    .locals 2

    .line 90
    const-string v0, "Notify"

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "config-change"

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsSubtype:Ljava/lang/String;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->handleConfigChange(Landroid/content/Context;)V

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->confirmPushMsgDelivery(Landroid/content/Context;)V

    .line 97
    const-string p1, "conn_mgr"

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "ENA"

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "IAM"

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->pnsType:Ljava/lang/String;

    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 99
    :cond_2
    :goto_0
    sget-boolean p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/PushMessage;->ENG_MODE:Z

    return p0
.end method
