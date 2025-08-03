.class public Lcom/sec/internal/ims/fcm/FcmListenerService;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source "FcmListenerService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/fcm/FcmListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/fcm/FcmListenerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 1

    .line 16
    sget-object p0, Lcom/sec/internal/ims/fcm/FcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onMessageReceived"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->onMessageReceived(Lcom/google/firebase/messaging/RemoteMessage;)V

    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 1

    .line 22
    sget-object p0, Lcom/sec/internal/ims/fcm/FcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onNewToken"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;->onNewToken(Ljava/lang/String;)V

    return-void
.end method
