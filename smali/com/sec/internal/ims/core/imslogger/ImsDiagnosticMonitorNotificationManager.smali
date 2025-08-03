.class public Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;
.super Landroid/os/Handler;
.source "ImsDiagnosticMonitorNotificationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier;
.implements Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;


# static fields
.field private static final DATEFORMAT:Ljava/lang/String; = "MM.dd HH:mm:ss"

.field private static final DM_EVENT_READY:Ljava/lang/String; = "com.samsung.imslogger.action.DM_EVENT_READY"

.field private static final DM_PACKAGE:Ljava/lang/String; = "com.sec.imslogger"

.field private static final EVENT_CHECK_PACKAGE_STATUS:I = 0x3

.field private static final EVENT_VOPS_CHANGED:I = 0x1

.field public static final IMS_DEBUG_INFO_TIMESTAMP:Ljava/lang/String; = "Timestamp"

.field public static final IMS_DEBUG_INFO_TYPE:Ljava/lang/String; = "DebugInfoType"

.field public static final IMS_LOCAL_ADDRESS:Ljava/lang/String; = "LocalAddr"

.field public static final IMS_REMOTE_ADDRESS:Ljava/lang/String; = "RemoteAddr"

.field public static final IMS_SETTINGS_EVENT_CALL:I = 0x12

.field public static final IMS_SETTINGS_EVENT_DBR:I = 0xb

.field public static final IMS_SETTINGS_EVENT_REGI:I = 0x11

.field public static final IMS_SETTINGS_EVENT_SIP:I = 0x1

.field public static final IMS_SETTINGS_EVENT_VPOS:I = 0x5

.field public static final IMS_SIP_DIRECTION:Ljava/lang/String; = "Direction"

.field public static final IMS_SIP_MESSAGE:Ljava/lang/String; = "SipMsg"

.field public static final IMS_SIP_TYPE:Ljava/lang/String; = "SipType"

.field public static final IMS_VOLTE_VOPS_INDICATION:Ljava/lang/String; = "VoPSIndication"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsDiagMonitorNotiMgr"

.field private static final STTS_EVENT_READY:Ljava/lang/String; = "com.googlecode.android_scripting.action.STTS_EVENT_READY"

.field private static final STTS_PACKAGE:Ljava/lang/String; = "com.googlecode.android_scripting"

.field private static final VOLTE_DEDICATED_BEARER_NOTIFY_EVENT:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mDmEventReadyReceiver:Landroid/content/BroadcastReceiver;

.field private mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

.field private mPackageCheckCount:I

.field private mPdnStateMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmExternalSupporter(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    .line 96
    new-instance p2, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$1;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mDmEventReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mContext:Landroid/content/Context;

    .line 89
    new-instance p2, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    .line 90
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    const-string v0, "com.samsung.imslogger.action.DM_EVENT_READY"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v0, "com.googlecode.android_scripting.action.STTS_EVENT_READY"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mDmEventReadyReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private checkPackageStatus(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->checkPackageStatus(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object p0

    return-object p0
.end method

.method private handleDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V
    .locals 3

    .line 229
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 230
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getBearerState()I

    move-result v1

    const-string v2, "DedicatedBearerQosStatus"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    const-string v1, "DedicatedBearerQosQCI"

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;->getQci()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0xb

    .line 237
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    return-void
.end method

.method private handleUpdateVoPSIndication(Z)V
    .locals 2

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 223
    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "VoPSIndication"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x5

    .line 225
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    return-void
.end method

.method public static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7

    .line 211
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 212
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 213
    rem-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 215
    div-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    .line 216
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private send(ILandroid/content/Intent;)V
    .locals 2

    .line 268
    const-string v0, "DebugInfoType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 269
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "MM.dd HH:mm:ss"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Timestamp"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 137
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    .line 149
    const-string v0, "com.sec.imslogger"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->checkPackageStatus(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;->NOT_INSTALLED:Lcom/sec/internal/interfaces/ims/core/imslogger/ISignallingNotifier$PackageStatus;

    if-ne v1, v2, :cond_1

    .line 150
    iget v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package was not installed, check again #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPackageCheckCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsDiagMonitorNotiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x3e8

    .line 152
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/os/PackageUtils;->isProcessRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->initializeDmEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->handleDedicatedBearerEvent(Lcom/sec/internal/ims/servicemodules/volte2/data/DedicatedBearerEvent;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->handleUpdateVoPSIndication(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 242
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 244
    const-string/jumbo v1, "regState"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 245
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "profileName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "services"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    const-string p2, "cmcType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 p1, 0x11

    .line 249
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    goto :goto_0

    .line 251
    :cond_0
    const-string p0, "ImsDiagMonitorNotiMgr"

    const-string/jumbo p1, "regInfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initSequentially()V
    .locals 4

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 114
    const-string v2, "APN_ALREADY_ACTIVE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "APN_REQUEST_STARTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "APN_TYPE_NOT_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const-string v1, "APN_REQUEST_FAILED"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mPdnStateMap:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v3, "APN_ALREADY_INACTIVE"

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCallStatus(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    const-string p1, "callState"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string p1, "callType"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    const-string p1, "audioCodec"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x12

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->send(ILandroid/content/Intent;)V

    return-void
.end method

.method public onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 179
    new-instance v11, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, p2

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager$2;-><init>(Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    invoke-virtual {p0, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 171
    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->onIndication(ILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public send(Ljava/lang/Object;)Z
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;->mExternalSupporter:Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imslogger/ExternalSupporter;->send(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method
