.class public Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;
.super Ljava/lang/Object;
.source "AmbsPhoneStateListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbsPhoneStateListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

.field private mIsPhoneServiceReady:Z

.field private mServiceStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

.field private final mSlotId:I

.field private mZcodeRequested:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIControllerCommonInterface(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPhoneServiceReady(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIsPhoneServiceReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZcodeRequested(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPhoneServiceReady(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIsPhoneServiceReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmZcodeRequested(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(ILcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIsPhoneServiceReady:Z

    .line 19
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

    .line 26
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mIControllerCommonInterface:Lcom/sec/internal/interfaces/ims/cmstore/IControllerCommonInterface;

    .line 27
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    .line 28
    iput p1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mSlotId:I

    return-void
.end method


# virtual methods
.method public startListen()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;-><init>(Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

    :cond_0
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mZcodeRequested:Z

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mSlotId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    :cond_1
    return-void
.end method

.method public stopListen()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mSlotId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->mServiceStateListener:Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener$PhoneServiceListener;

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    .line 48
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/ambs/provision/AmbsPhoneStateListener;->TAG:Ljava/lang/String;

    const-string v0, "Phone state listener was not initial, maybe provison started form the latest failed api. No need to close it."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
