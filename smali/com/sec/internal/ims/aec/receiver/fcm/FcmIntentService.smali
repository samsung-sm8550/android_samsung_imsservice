.class public Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;
.super Landroid/app/IntentService;
.source "FcmIntentService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$mupdateFcmToken(Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getInstance()Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object p0

    .line 69
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    invoke-interface {p0, p2, p3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->updateFcmToken(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    .line 29
    sget-object v0, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->LOG_TAG:Ljava/lang/String;

    monitor-enter v0

    .line 30
    :try_start_0
    const-string/jumbo v1, "phoneId"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 31
    const-string/jumbo v2, "senderId"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 33
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const-string p1, "fcm senderId not ready"

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_0

    .line 36
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object v3

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/google/firebase/FirebaseApp;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 38
    const-class v4, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v3, v4}, Lcom/google/firebase/FirebaseApp;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/messaging/FirebaseMessaging;

    invoke-virtual {v3}, Lcom/google/firebase/messaging/FirebaseMessaging;->getToken()Lcom/google/android/gms/tasks/Task;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;

    invoke-direct {v4, p0, v1, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService$1;-><init>(Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;ILjava/lang/String;)V

    .line 39
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 61
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmIntentService;->updateFcmToken(ILjava/lang/String;Ljava/lang/String;)V

    .line 63
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
