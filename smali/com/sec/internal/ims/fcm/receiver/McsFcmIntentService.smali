.class public Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;
.super Landroid/app/IntentService;
.source "McsFcmIntentService.java"


# static fields
.field protected static final FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "fcmRegistrationToken"

.field protected static final FCM_REGISTRATION_TOKEN_REFRESHED:Ljava/lang/String; = "fcmRegistrationTokenRefreshed"

.field protected static final INTENT_RECEIVE_FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field protected static final SENDER_ID:Ljava/lang/String; = "senderId"

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$msendFcmRegistrationToken(Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 76
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "phoneId"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    const-string/jumbo v0, "senderId"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string p2, "fcmRegistrationToken"

    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string p2, "fcmRegistrationTokenRefreshed"

    invoke-virtual {p0, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    sget-object p2, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p3, "sendFcmRegistrationToken: sendBroadcast INTENT_RECEIVE_FCM_REGISTRATION_TOKEN"

    invoke-static {p2, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 83
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p1, p0, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 8

    .line 35
    sget-object v0, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    const-string/jumbo v1, "phoneId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    const-string/jumbo v2, "senderId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    const-string v3, "fcmRegistrationTokenRefreshed"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 39
    sget-object v3, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHandleIntent: senderId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isFcmRegistrationTokenRefreshed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    .line 42
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v5

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v5, v6, v2}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 45
    const-class v3, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v5, v3}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v5, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;

    invoke-direct {v5, p0, v1, v2, p1}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService$1;-><init>(Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;ILjava/lang/String;Z)V

    .line 46
    invoke-virtual {v3, v5}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    .line 63
    :cond_0
    const-string/jumbo v5, "onHandleIntent: firebaseApp is null"

    invoke-static {v3, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 64
    invoke-direct {p0, v1, v2, v4, p1}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 68
    :goto_0
    :try_start_2
    sget-object v5, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onHandleIntent: fail to get fcmRegistrationToken: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    invoke-direct {p0, v1, v2, v4, p1}, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;->sendFcmRegistrationToken(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 71
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
