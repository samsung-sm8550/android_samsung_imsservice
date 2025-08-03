.class public Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
.super Ljava/lang/Object;
.source "VshTranslation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VshTranslation"

.field private static final mCranePackage:Ljava/lang/String; = "com.samsung.crane"

.field private static final sIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;


# direct methods
.method static bridge synthetic -$$Nest$mrequestAcceptShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestCancelShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestChangeSurfaceOrientation(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestChangeSurfaceOrientation(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestNewShare(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestNewShare(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestToggleCamera(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestToggleCamera(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    .line 47
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 48
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 51
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    .line 57
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->sIntentFilter:Landroid/content/IntentFilter;

    const/4 p2, 0x2

    invoke-virtual {p1, v0, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private broadcastIntent(Landroid/content/Intent;I)V
    .locals 3

    .line 299
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    invoke-static {v0, p2}, Lcom/sec/internal/helper/os/TelephonyUtilsWrapper;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 303
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method private requestAcceptShare(Landroid/content/Intent;)V
    .locals 3

    .line 100
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 101
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestAcceptShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->acceptShare(J)V

    return-void
.end method

.method private requestCancelShare(Landroid/content/Intent;)V
    .locals 3

    .line 113
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 114
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCancelShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->cancelShare(J)V

    return-void
.end method

.method private requestChangeSurfaceOrientation(Landroid/content/Intent;)V
    .locals 4

    .line 137
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 138
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChangeSurfaceOrientation: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 140
    const-string v2, "com.sec.rcs.mediatransfer.csh.extra.SURFACE_ORIENTATION"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 142
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->changeSurfaceOrientation(JI)V

    return-void
.end method

.method private requestNewShare(Landroid/content/Intent;)V
    .locals 3

    .line 88
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 89
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestNewShare: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 91
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    const-string v2, "com.sec.rcs.videosharing.LIVE_VIDEO_CONTENTPATH"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private requestToggleCamera(Landroid/content/Intent;)V
    .locals 3

    .line 125
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 126
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestToggleCamera: extras "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-string v0, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 129
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->toggleCamera(J)V

    return-void
.end method


# virtual methods
.method public broadcastApproachingVsMaxDuration(JI)V
    .locals 2

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.APPROCHING_VS_MAX_DURATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.REMAINING_TIME"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 289
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V
    .locals 3

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.callcomposer.receiver.SessionInvitationReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CANCELED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 190
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.REASON"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_DIRECTION"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCommunicationError()V
    .locals 2

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_LCOMMUNICATION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastConnected(JLcom/sec/ims/util/ImsUri;)V
    .locals 3

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.listener.RcsCallActionListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCshCamError()V
    .locals 2

    .line 254
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 255
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_CAM_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastCshServiceNotReady()V
    .locals 2

    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.CSH_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    .line 159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 160
    const-string v1, "com.samsung.crane"

    const-string v2, "com.samsung.crane.callcomposer.receiver.SessionInvitationReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_INCOMING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 164
    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.SHARE_TYPE"

    const/4 p2, 0x2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "com.sec.rcs.mediatransfer.csh.extra.CONTACT_URI"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 166
    const-string p1, "com.sec.rcs.mediatransfer.csh.extra.FILE_PATH"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastServiceNotReady()V
    .locals 2

    .line 247
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_SERVICE_NOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public broadcastServiceReady()V
    .locals 2

    .line 234
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    const-string v1, "com.sec.rcs.mediatransfer.vsh.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string v1, "com.sec.rcs.mediatransfer.vsh.notification.SHARE_SERVICE_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->mServiceModule:Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 4

    .line 313
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 314
    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CONTENT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestNewShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 317
    :cond_0
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_ACCEPT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestAcceptShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 319
    :cond_1
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.SHARE_CANCEL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 320
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestCancelShare(Landroid/content/Intent;)V

    goto :goto_0

    .line 321
    :cond_2
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.TOGGLE_CAMERA"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 322
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestToggleCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 323
    :cond_3
    const-string v1, "com.sec.rcs.mediatransfer.vsh.action.CHANGE_VIDEO_ORIENTATION"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 325
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->requestChangeSurfaceOrientation(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void
.end method
