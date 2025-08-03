.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;
.super Ljava/lang/Object;
.source "PresenceIntentReceiver.java"


# static fields
.field static final INTENT_ACTION_TRIGGER_OMADM_TREE_SYNC:Ljava/lang/String; = "com.samsung.sdm.START_DM_SYNC_SESSION"

.field static final INTENT_BAD_EVENT_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

.field static final INTENT_EXTRA_KEY_PHONE_ID:Ljava/lang/String; = "KEY_PHONE_ID"

.field static final INTENT_EXTRA_KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "KEY_SUBSCRIPTION_ID"

.field static final INTENT_PERIODIC_PUBLISH_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.publish_timeout"

.field static final INTENT_RETRY_PUBLISH:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.retry_publish"

.field static final INTENT_RETRY_SUBSCRIBE:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceIntentReceiver"

.field static mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private static mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field static mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmPresence()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$1;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$1;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$2;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver$2;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mPresence:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-void
.end method


# virtual methods
.method getIntentFilter()Landroid/content/IntentFilter;
    .locals 1

    .line 68
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v0, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v0, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v0, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0
.end method

.method getSubscribeRetryIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 76
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    const-string v0, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    const-string/jumbo v0, "urn"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v0, "subscriptionid"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    return-object p0
.end method
