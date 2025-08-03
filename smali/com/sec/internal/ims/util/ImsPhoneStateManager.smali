.class public Lcom/sec/internal/ims/util/ImsPhoneStateManager;
.super Ljava/lang/Object;
.source "ImsPhoneStateManager.java"


# static fields
.field private static INTENT_ACTION_SUBINFO_UPDATED:Ljava/lang/String; = "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

.field private static LOG_TAG:Ljava/lang/String; = "ImsPhoneStateManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListenEvent:I

.field private mListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/telephony/PhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListenerInternal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/util/ImsPhoneStateManager;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListenEvent:I

    .line 47
    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mContext:Landroid/content/Context;

    .line 48
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    iput p2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListenEvent:I

    .line 52
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    .line 53
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    .line 56
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    sget-object p1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->INTENT_ACTION_SUBINFO_UPDATED:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;
    .locals 2

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    .line 116
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->getSimSlot()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private registerPhoneStateListenerInternal(II)V
    .locals 3

    .line 84
    new-instance v0, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;-><init>(Lcom/sec/internal/ims/util/ImsPhoneStateManager;II)V

    .line 85
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerPhoneStateListenerInternal:"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    iget-object p2, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListenEvent:I

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private unRegisterPhoneStateListenerInternal(I)V
    .locals 3

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    move-result-object v0

    if-nez v0, :cond_0

    .line 101
    sget-object p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterPhoneStateListenerInternal, phoneStateListenerInternal["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] is not exist. return.."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 105
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->getPhoneStateListenerInternal(I)Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerPhoneStateListenerInternal:"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/util/ImsPhoneStateManager$PhoneStateListenerInternal;->getSubId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 111
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mPhoneStateListenerInternal:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public hasListener(I)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerListener(Landroid/telephony/PhoneStateListener;)V
    .locals 2

    .line 62
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    .line 63
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result v1

    .line 65
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerListener(Landroid/telephony/PhoneStateListener;II)V

    return-void
.end method

.method public registerListener(Landroid/telephony/PhoneStateListener;II)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "registerListener:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->registerPhoneStateListenerInternal(II)V

    return-void
.end method

.method public unRegisterListener(I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->unRegisterPhoneStateListenerInternal(I)V

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/util/ImsPhoneStateManager;->mListener:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
