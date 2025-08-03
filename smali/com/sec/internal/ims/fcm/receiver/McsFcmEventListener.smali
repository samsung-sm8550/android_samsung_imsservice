.class public Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;
.super Ljava/lang/Object;
.source "McsFcmEventListener.java"

# interfaces
.implements Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;


# static fields
.field protected static final FROM_FIELD:Ljava/lang/String; = "from"

.field protected static final INTENT_RECEIVE_FCM_PUSH_NOTIFICATION:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

.field protected static final INTENT_REFRESH_FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

.field private static final LOG_TAG:Ljava/lang/String; = "McsFcmEventListener"

.field protected static final MESSAGE_FIELD:Ljava/lang/String; = "message"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;
    .locals 1

    .line 26
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;

    return-object v0
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    if-eqz p3, :cond_1

    .line 31
    const-string p0, "message"

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessageReceived: from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "onMessageReceived: sendBroadcast INTENT_RECEIVE_FCM_PUSH_NOTIFICATION"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    sget-object p0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    .line 32
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onMessageReceived: message is empty"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    .line 46
    sget-object p0, Lcom/sec/internal/ims/fcm/receiver/McsFcmEventListener;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onNewToken: sendBroadcast INTENT_REFRESH_FCM_REGISTRATION_TOKEN"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, p0, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
