.class public Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;
.super Ljava/lang/Object;
.source "GlsTranslation.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.implements Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GlsTranslation"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/gls/GlsModule;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 45
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    .line 46
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->registerFtEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;)V

    .line 47
    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->registerMessageEventListener(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;ZI)V
    .locals 3

    .line 399
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const/high16 p2, 0x10000000

    .line 401
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    const/16 p2, 0x20

    .line 403
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    .line 406
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p3

    invoke-static {v0, p3}, Lcom/sec/internal/helper/os/TelephonyUtilsWrapper;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p3

    .line 407
    const-string v0, "com.samsung.rcs.im.READ_PERMISSION"

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isBMode(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 408
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->OWNER:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 410
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p3, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getRequiredAction(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)I
    .locals 1

    .line 514
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x2

    if-eq p0, p1, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 p1, 0x4

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    return p1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private requestAcceptLocationShare(Landroid/content/Intent;)V
    .locals 4

    .line 156
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 157
    const-string v0, "message_imdn_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    const-string v1, "chat_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v2, "contentUri"

    const-class v3, Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method private requestCreateInCallLocationShare(Landroid/content/Intent;)V
    .locals 11

    .line 125
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestCreateInCallLocationShare()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v1, "contactUri"

    const-class v2, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 131
    const-string v2, "disposition_notification"

    .line 132
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v4, "location"

    const-class v5, Landroid/location/Location;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/location/Location;

    .line 134
    const-string v4, "label"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 135
    const-string/jumbo v4, "request_message_id"

    .line 136
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 135
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 139
    const-string v4, "is_publicAccountMsg"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 142
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL"

    .line 143
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    :goto_0
    move-object v4, p1

    move v10, v5

    goto :goto_1

    .line 145
    :cond_0
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_GC"

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    const-string/jumbo p1, "sip:anonymous@anonymous.invalid"

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    const/4 v0, 0x1

    move-object v4, p1

    move v10, v0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    .line 150
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    .line 151
    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    move-object v2, p0

    .line 150
    invoke-virtual/range {v2 .. v10}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->createInCallLocationShare(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/concurrent/Future;

    return-void
.end method

.method private requestRejectLocationShare(Landroid/content/Intent;)V
    .locals 2

    .line 164
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 165
    const-string v0, "message_imdn_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string v1, "chat_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->rejectLocationShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestShareLocationInChat(Landroid/content/Intent;)V
    .locals 15

    .line 78
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestShareLocationInChat()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 81
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    const-string v1, "disposition_notification"

    .line 83
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    const-string v2, "location"

    const-class v3, Landroid/location/Location;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/location/Location;

    .line 85
    const-string v2, "label"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    const-string v3, "location_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 87
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 88
    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move-object v7, v5

    goto :goto_0

    :cond_0
    move-object v7, v2

    .line 91
    :goto_0
    const-string/jumbo v2, "request_message_id"

    .line 92
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 91
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 93
    const-string v2, "locationLink"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    const-string v2, "contactUri"

    const-class v3, Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 95
    const-string v3, "maap_traffic_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 96
    const-string/jumbo v3, "rcs_reference_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 97
    const-string/jumbo v3, "rcs_reference_type"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 98
    const-string/jumbo v3, "sim_slot_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v3, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT"

    .line 104
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 103
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    .line 105
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move v11, v10

    move-object v10, v2

    goto :goto_2

    .line 106
    :cond_1
    const-string v2, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_GC"

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v11, v2

    :goto_1
    move-object v10, v5

    goto :goto_2

    :cond_2
    move v11, v10

    goto :goto_1

    .line 112
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 114
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v3, v0

    move-object v0, p0

    goto :goto_4

    .line 116
    :catch_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid slot id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, -0x1

    goto :goto_3

    .line 119
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    invoke-virtual/range {v2 .. v14}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->shareLocationInChat(ILjava/lang/String;Ljava/util/Set;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 51
    const-string v0, "com.samsung.rcs.framework.geolocationshare.category.ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 52
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT"

    .line 53
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_GC"

    .line 55
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL"

    .line 58
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_GC"

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.ACCEPT_SHARE_LOCATION_INCALL"

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestAcceptLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 65
    :cond_2
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.REJECT_SHARE_LOCATION_INCALL"

    .line 66
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestRejectLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 68
    :cond_3
    const-string v0, "com.samsung.rcs.framework.geolocationshare.action.START_SHARE_LOCATION_INCALL"

    .line 69
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestStartLocationShareInCall(Landroid/content/Intent;)V

    goto :goto_2

    .line 72
    :cond_4
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 61
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestCreateInCallLocationShare(Landroid/content/Intent;)V

    goto :goto_2

    .line 56
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->requestShareLocationInChat(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onAcceptLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.ACCEPT_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const-string p3, "message_imdn_id"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string p1, "chat_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCancelLocationShareInCallResponse(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V
    .locals 2

    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CANCEL_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 299
    const-string p4, "message_imdn_id"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    const-string p1, "message_direction"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 301
    const-string p1, "chat_id"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onCreateInCallLocationShareResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.CREATE_SHARE_LOCATION_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p3, :cond_0

    const-wide/16 p3, -0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-static {p3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 264
    :goto_0
    const-string/jumbo v1, "request_message_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    const-string p3, "chat_id"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string p3, "message_imdn_id"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onDeleteAllLocationShareResponse(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.DELETE_ALL_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    if-eqz p2, :cond_1

    .line 313
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByMessageId(I)I

    move-result p1

    :cond_1
    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 422
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFileTransferAttached: call onOutgoingTransferAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onOutgoingTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onFileTransferReceived: call onIncomingTransferUndecided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onIncomingTransferUndecided(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    .line 461
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
    .locals 0

    .line 500
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3

    .line 381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 382
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_NOTIFICATION_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 385
    const-string v1, "chat_id"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    .line 386
    const-string v2, "message_notification_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 389
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result v1

    .line 388
    const-string v2, "message_notification_status_received"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 390
    const-string v1, "is_group_chat"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public onIncomingLoactionShareInCall(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 3

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.INCOMING_LOCATION_SHARE_INCALL_INVITATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "message_imdn_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "chat_id"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 331
    const-string v1, "contactUri"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    if-ne v1, v2, :cond_0

    .line 334
    const-string v1, "is_bot"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onLocationShareInCallCompleted(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3

    if-nez p1, :cond_0

    .line 354
    sget-object p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onLocationShareInCallCompleted: msg is null, skip"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 359
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v2, :cond_1

    .line 360
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 362
    :cond_1
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SENT_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    :goto_0
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const-string p2, "message_imdn_id"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p2

    const-string v1, "message_direction"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 370
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-wide/16 v1, -0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 369
    :goto_1
    const-string/jumbo p2, "request_message_id"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 371
    const-string p2, "chat_id"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 375
    const-string v1, "maap_traffic_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public onLocationShareInCallCompleted(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Z)V
    .locals 2

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    const-string p4, "message_imdn_id"

    invoke-virtual {v0, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string p1, "message_direction"

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string p1, "chat_id"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->updateExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 477
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V

    return-void
.end method

.method public onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 471
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 8

    .line 488
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    move-object v0, p0

    move-object v5, p2

    move-object v7, p3

    .line 488
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-void
.end method

.method public onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 8

    .line 482
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRequestMessageId()Ljava/lang/String;

    move-result-object v2

    .line 483
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    .line 482
    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    return-void
.end method

.method public onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onReceiveShareLocationInChatMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)V
    .locals 3

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_LOCATION_SHARE_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string v1, "message_imdn_id"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "is_group_chat"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 225
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p2

    const-string v1, "message_direction"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getSuggestion()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 230
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v2, "persistent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 232
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 234
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 236
    :goto_0
    const-string v1, "extra_suggestion_text"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 241
    const-string v1, "maap_traffic_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    move-result-object p2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    const/4 v2, 0x1

    if-ne p2, v1, :cond_2

    .line 245
    const-string p2, "is_bot"

    invoke-virtual {v0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsReferenceId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 249
    const-string/jumbo p2, "rcs_reference_id"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsReferenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsReferenceType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 252
    const-string/jumbo p2, "rcs_reference_type"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRcsReferenceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, v2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public onReceiveShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 3

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.RECEIVE_SHARE_LOCATION_IN_CHAT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 197
    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 196
    :goto_0
    const-string/jumbo p2, "request_message_id"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 198
    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string p2, "message_imdn_id"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_2

    .line 202
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->getRequiredAction(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)I

    move-result p2

    .line 201
    const-string/jumbo p3, "required_action"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 203
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq p2, p3, :cond_1

    .line 204
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p2, p3, :cond_2

    .line 205
    :cond_1
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    .line 206
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object p2

    .line 205
    const-string p3, "error_reason"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    if-eqz p6, :cond_3

    if-eqz p7, :cond_3

    .line 211
    invoke-interface {p6}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isDisplayWarnText()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 212
    invoke-virtual {p7}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "warn_text"

    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public onRejectLocationShareInCallResponse(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 282
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 283
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.REJECT_LOCATION_SHARE_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    const-string p3, "message_imdn_id"

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string p1, "chat_id"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onShareLocationInChatResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 178
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 179
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.SHARE_LOCATION_IN_CHAT_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p2, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 182
    :goto_0
    const-string/jumbo p2, "request_message_id"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    const-string p2, "chat_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string p2, "message_imdn_id"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByChatId(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;ZI)V

    return-void
.end method

.method public onStartLocationShareInCallResponse(Ljava/lang/String;Z)V
    .locals 2

    .line 317
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 318
    const-string v1, "com.samsung.rcs.framework.geolocationshare.action.START_SHARE_LOCATION_INCALL_RESPONSE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    const-string v1, "com.samsung.rcs.framework.geolocationshare.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v1, "response_status"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    const-string p2, "message_imdn_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->getPhoneIdByImdnId(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 454
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferCanceled: call onTransferCanceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 448
    sget-object v0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTransferCompleted: call onTransferCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    return-void
.end method

.method public onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public requestStartLocationShareInCall(Landroid/content/Intent;)V
    .locals 1

    .line 171
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 172
    const-string v0, "message_imdn_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsTranslation;->mGlsModule:Lcom/sec/internal/ims/servicemodules/gls/GlsModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/gls/GlsModule;->startLocationShareInCall(Ljava/lang/String;)V

    return-void
.end method
