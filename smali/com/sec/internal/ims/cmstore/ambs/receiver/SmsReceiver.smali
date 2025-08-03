.class public Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-void
.end method

.method private checkAndHandleZCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    new-instance v0, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;-><init>()V

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1, p2, v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->handleSmsZCode(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>>>onReceive start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-eqz v0, :cond_9

    .line 45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string/jumbo v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 48
    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 52
    :cond_0
    array-length v2, v1

    new-array v3, v2, [Landroid/telephony/SmsMessage;

    .line 53
    const-string/jumbo v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 54
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v5, 0x2

    if-ne p1, v5, :cond_1

    .line 55
    const-string p1, "3gpp2"

    goto :goto_0

    :cond_1
    const-string p1, "3gpp"

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    .line 56
    :goto_1
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 57
    aget-object v7, v1, v6

    check-cast v7, [B

    invoke-static {v7, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 60
    :cond_2
    aget-object p1, v3, v5

    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 60
    :cond_3
    const-string p1, ""

    :goto_2
    move v1, v5

    :goto_3
    if-ge v1, v2, :cond_4

    .line 63
    aget-object v6, v3, v1

    .line 64
    invoke-virtual {v6}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 67
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    .line 72
    :cond_5
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 73
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 77
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->checkAndHandleZCode(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 79
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore this sms message, phoneId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mStoreClientId:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 80
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", currentNum:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 81
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 68
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string p1, "invalid message data"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string p1, "invalid pdus"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 85
    :cond_9
    :goto_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string p1, ">>>>>>>onReceive end"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
