.class public Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
.super Ljava/lang/Object;
.source "NsdsFcmListenerService.java"

# interfaces
.implements Lcom/sec/internal/ims/fcm/interfaces/IFcmEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NsdsFcmListenerService"

.field private static sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getAllFcmTokenDetails()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;",
            ">;"
        }
    .end annotation

    .line 95
    const-string/jumbo v0, "protocol_to_server"

    const-string v1, "device_uid"

    const-string/jumbo v2, "sender_id"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 103
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 105
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 106
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 107
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;-><init>()V

    .line 108
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->senderId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 109
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->protocolToServer:Ljava/lang/String;

    const/4 v1, 0x2

    .line 110
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->deviceUid:Ljava/lang/String;

    .line 111
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 114
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :goto_1
    if-eqz p0, :cond_2

    .line 101
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    monitor-enter v0

    .line 121
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 124
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->sInstance:Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private getPnsParser(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 60
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getPnsParser: data null, vail"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 64
    :cond_0
    const-string/jumbo v0, "push-message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPnsParser: PushMessageParser"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/PushMessageParser;-><init>()V

    return-object p0

    .line 67
    :cond_1
    const-string v0, "message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 68
    sget-object p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getPnsParser: EventListMessageParser"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/EventListMessageParser;-><init>()V

    :cond_2
    return-object p0
.end method

.method private startTokenRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/RegistrationIntentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const-string v1, "gcm_sender_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string p1, "gcm_protocol_to_server"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string p1, "device_id"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMessageReceived: From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "data: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->getPnsParser(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0, p3}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/IFcmMessageParser;->parseMessage(Ljava/util/Map;)Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 49
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->shouldBroadcast(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 50
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/data/ericssonnsds/FcmMessage;->broadcastFcmMessage(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_0
    const-string/jumbo p0, "onMessageReceived: parsing failed."

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onNewToken(Ljava/lang/String;)V
    .locals 3

    .line 78
    sget-object p1, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onNewToken"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->getAllFcmTokenDetails()Ljava/util/List;

    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;

    .line 81
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->senderId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->protocolToServer:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/data/FcmTokenDetail;->deviceUid:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/fcm/ericssonnsds/NsdsFcmListenerService;->startTokenRefresh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
