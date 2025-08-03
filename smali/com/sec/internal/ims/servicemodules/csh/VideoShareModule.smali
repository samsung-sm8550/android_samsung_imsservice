.class public Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;
.super Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;
.source "VideoShareModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;


# static fields
.field private static final DISABLED_ALL_COVERAGES:I = 0x0

.field private static final ENABLED_3G_COVERAGES:I = 0x4

.field private static final ENABLED_ALL_COVERAGES:I = 0x1

.field private static final ENABLED_HSPA_COVERAGES:I = 0x8

.field private static final ENABLED_LTE_COVERAGES:I = 0x10

.field private static final ENABLED_WLAN_COVERAGES:I = 0x2

.field private static final EVENT_CANCEL_SHARE:I = 0x5

.field private static final EVENT_INCOMING_SESSION:I = 0x2

.field private static final EVENT_SESSION_ESTABLISHED:I = 0x3

.field private static final EVENT_SESSION_TEMINATED:I = 0x4

.field private static final EXTRA_SESSIONID:Ljava/lang/String;

.field private static final INTENT_MAX_DURATION_TIME:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String; = "VideoShareModule"

.field public static final NAME:Ljava/lang/String; = "VideoShareModule"


# instance fields
.field private mHasVideoShareSupport:[Z

.field private final mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

.field private mInComingTerminateId:I

.field private mInitialFeatures:[J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkType:[I

.field private mRegistrationId:I

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mVsAuth:[I

.field private mVshInComingEntered:Z

.field private final mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

.field private maxDurationTime:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmInComingTerminateId(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmVshTranslation(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmaxDurationTime(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmInComingTerminateId(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmVshInComingEntered(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetEXTRA_SESSIONID()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->EXTRA_SESSIONID:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetINTENT_MAX_DURATION_TIME()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".max_duration_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SessionID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->EXTRA_SESSIONID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)V
    .locals 6

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 91
    filled-new-array {p1, p1}, [I

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    const/4 p2, -0x1

    .line 95
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 100
    filled-new-array {p1, p1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    const/4 v0, 0x2

    .line 104
    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    .line 108
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    .line 135
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    .line 136
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    .line 140
    filled-new-array {p1, p1}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    .line 158
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 146
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 147
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 150
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const/4 v5, 0x4

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private blurNetworkType(I)I
    .locals 1

    .line 0
    const/4 p0, 0x1

    const/16 v0, 0x10

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/16 p0, 0xf

    if-eq p1, p0, :cond_0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    return p1

    :cond_0
    :pswitch_0
    const/16 p0, 0xa

    return p0

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private disableVshFeature()V
    .locals 2

    .line 511
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disableVshFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "CapabilityDiscoveryModule"

    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->createChannel(Ljava/lang/String;Landroid/os/Handler;)Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;

    move-result-object p0

    .line 514
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/base/ModuleChannel;->disableFeature(J)V

    return-void
.end method

.method private processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 341
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->onCallStateChanged(ILjava/util/List;)V

    .line 343
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mNPrevConnectedCalls:I

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    if-eqz p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 344
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result p2

    if-ge p1, p2, :cond_2

    .line 345
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p2

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 346
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 348
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processCallStateChanged: call cancelByUserSession"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->cancelByUserSession()V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private readConfig(I)V
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vsAuth"

    .line 794
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 793
    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, p1

    .line 795
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readConfig: VsAuth "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string v2, "maxtimevideoshare"

    .line 798
    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 797
    invoke-static {v1, v2, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, p1

    .line 800
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 801
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "readconfig: vsauth true but forced disable for SPRINT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->disableVshFeature()V

    .line 803
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aput v3, p0, p1

    :cond_0
    return-void
.end method

.method private updateFeatures(I)V
    .locals 5

    .line 880
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->readConfig(I)V

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 883
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 886
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v2, v1, p1

    const/16 v3, 0x12

    if-eq v2, v3, :cond_0

    .line 887
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->blurNetworkType(I)I

    move-result v0

    aput v0, v1, p1

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v1, v1, p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isVsEnabled(II)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 892
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFeatures: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", HasVideoShareSupport = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 896
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "vs"

    invoke-static {v3, v4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    move v1, v2

    .line 898
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v2, v2, p1

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 899
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v1, v1

    aput-wide v1, v0, p1

    goto :goto_1

    .line 901
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateFeatures: RCS is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 904
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v1, p0, p1

    aput-wide v1, v0, p1

    return-void
.end method

.method private vshIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;)V
    .locals 7

    .line 523
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSessionId:I

    .line 524
    iget-object v5, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 525
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 526
    iget v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSource:I

    .line 527
    iget-object v4, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    .line 529
    sget-object p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vshIncomingSessionEvent #"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 531
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    const/4 p1, -0x1

    .line 532
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    if-eqz v0, :cond_0

    .line 534
    const-string p1, "application/samsungrcssos"

    .line 535
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 536
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Skipping OpenAPI incoming session message"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;IILjava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private vshReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I
    .locals 0

    .line 718
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$5;->$SwitchMap$com$sec$internal$ims$servicemodules$csh$event$CshErrorReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x9

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    const/16 p0, 0xa

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x2

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private vshSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;)V
    .locals 5

    .line 619
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vshSessionEstablishedEvent session #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 623
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    aget v1, v1, v2

    if-eqz v1, :cond_0

    .line 624
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->INTENT_MAX_DURATION_TIME:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 625
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->EXTRA_SESSIONID:Ljava/lang/String;

    iget v3, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mSessionId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 631
    :goto_0
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;->mResolution:Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessioinEstablished(Lcom/sec/internal/ims/servicemodules/csh/event/VshResolution;Landroid/app/PendingIntent;)V

    .line 632
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 633
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 632
    invoke-virtual {p1, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastConnected(JLcom/sec/ims/util/ImsUri;)V

    .line 635
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->getDeviceOrientation(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object p0

    .line 636
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->setPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    goto :goto_1

    .line 639
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Session is Not found"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private vshSessionTerminatedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;)V
    .locals 8

    .line 649
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vshSessionTerminatedEvent session #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    .line 652
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 655
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionTerminatedByStack()V

    .line 656
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    if-eqz v1, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    .line 660
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSH(IZ)V

    .line 663
    :cond_0
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshReasonTranslator(Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;)I

    move-result v7

    .line 664
    iput v7, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 665
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCanceled(JLcom/sec/ims/util/ImsUri;II)V

    .line 669
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne v0, v1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCshServiceNotReady()V

    .line 673
    :cond_1
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-ne p1, v0, :cond_3

    .line 674
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCshCamError()V

    goto :goto_0

    .line 678
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already removed session"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshInComingEntered:Z

    if-eqz v0, :cond_3

    .line 680
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;->mSessionId:I

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInComingTerminateId:I

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public acceptShare(J)V
    .locals 3

    .line 411
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "acceptShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->acceptIncomingSession()V

    goto :goto_0

    .line 416
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    :goto_0
    return-void
.end method

.method public cancelShare(J)V
    .locals 3

    .line 427
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelShare sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->cancelByUserSession()V

    goto :goto_0

    .line 432
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    :goto_0
    return-void
.end method

.method public changeSurfaceOrientation(JI)V
    .locals 2

    .line 473
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 475
    invoke-static {p3}, Lcom/sec/internal/ims/util/DeviceOrientationStatus;->translate(I)Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->setPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    .line 476
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeSurfaceOrientation sharedId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " onSuccess"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 478
    :cond_0
    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    :goto_0
    return-void
.end method

.method public createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/csh/VideoShare;",
            ">;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 401
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getImsRegistration()Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 872
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 873
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 874
    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxDurationTime()I
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->maxDurationTime:[I

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallPhoneId:I

    aget p0, v0, p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 180
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 185
    const-string/jumbo p0, "vs"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 1

    .line 500
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 502
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not Video Share"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 1

    .line 487
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is not Video Share"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 0

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object p0

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 687
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 690
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 704
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->cancelShare(J)V

    goto :goto_0

    .line 700
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 701
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshSessionTerminatedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionTerminatedEvent;)V

    goto :goto_0

    .line 696
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 697
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshSessionEstablishedEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshSessionEstablishedEvent;)V

    goto :goto_0

    .line 692
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 693
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->vshIncomingSessionEvent(Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;)V

    :goto_0
    return-void
.end method

.method public isVsEnabled(II)Z
    .locals 3

    .line 817
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "networkType is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", VsAuth is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVsAuth:[I

    aget p0, p0, p2

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return p2

    :cond_0
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-lez v0, :cond_1

    return v1

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return p2

    :pswitch_1
    and-int/lit8 p0, p0, 0x2

    if-lez p0, :cond_2

    move p2, v1

    :cond_2
    return p2

    :pswitch_2
    and-int/lit8 p0, p0, 0x10

    if-lez p0, :cond_3

    move p2, v1

    :cond_3
    return p2

    :pswitch_3
    and-int/lit8 p0, p0, 0x8

    if-lez p0, :cond_4

    move p2, v1

    :cond_4
    return p2

    :pswitch_4
    and-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_5

    move p2, v1

    :cond_5
    return p2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public notifyApprochingVsMaxDuration(JI)V
    .locals 0

    .line 608
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastApproachingVsMaxDuration(JI)V

    return-void
.end method

.method public notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 6

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallLists:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 582
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mActiveCallLists:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 583
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/imsservice/ICall;

    .line 584
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/imsservice/ICall;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 586
    invoke-virtual {v3, p3}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v5

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 594
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 596
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastIncomming(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;)V

    return-void
.end method

.method public onConfigured(I)V
    .locals 3

    .line 225
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigured: phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateFeatures(I)V

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2

    .line 266
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 268
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-nez p2, :cond_0

    .line 269
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    aget-wide p0, p0, p1

    aput-wide p0, p2, v0

    return-void

    :cond_0
    const/4 p2, -0x1

    .line 273
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 274
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateServiceStatus(I)V

    .line 275
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mInitialFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    aget-wide p0, p0, p1

    aput-wide p0, p2, v0

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 5

    .line 283
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    const/16 v1, 0x12

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 286
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 289
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 290
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNetworkChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " network: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget p1, p1, p2

    if-eq v0, p1, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    const/4 p1, 0x0

    .line 294
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 299
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 300
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 302
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 308
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget p1, p1, p2

    if-eq v0, p1, :cond_5

    .line 309
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isVsEnabled(II)Z

    move-result p1

    .line 311
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    aget-boolean v2, v2, p2

    if-eq v2, p1, :cond_4

    if-eqz p1, :cond_3

    .line 313
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "enable VSH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v3, v3

    aput-wide v3, v2, p2

    goto :goto_2

    .line 316
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "disable VSH"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, p2

    .line 320
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v2

    .line 321
    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    if-eq v0, v1, :cond_4

    .line 322
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aget v3, v3, p2

    if-eq v3, v1, :cond_4

    .line 324
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSHOnRegi(ZI)V

    .line 328
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    aput-boolean p1, v1, p2

    .line 332
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    aput v0, p0, p2

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 231
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 232
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRegistered() phoneId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", services : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getRegistrationInfoId(Lcom/sec/ims/ImsRegistration;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mRegistrationId:I

    .line 239
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateServiceStatus(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v0

    .line 245
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x12

    if-eq v1, v2, :cond_1

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->blurNetworkType(I)I

    move-result v0

    aput v0, v1, v2

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mNetworkType:[I

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->isVsEnabled(II)Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "enable VSH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "disable VSH"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 259
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->updateOwnCapabilities(I)V

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mHasVideoShareSupport:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    aget-boolean p0, p0, v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->exchangeCapabilitiesForVSHOnRegi(ZI)V

    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->updateFeatures(I)V

    return-void
.end method

.method public resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->resetVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    return-void
.end method

.method public setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    return-void
.end method

.method public setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->setVshVideoDisplay(Lcom/sec/internal/ims/servicemodules/csh/event/VshVideoDisplayParams;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->registerForVshIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    const/4 v1, 0x3

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->registerForVshSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->registerForVshSessionTerminated(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 208
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 209
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mCache:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    .line 210
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionFailed()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_1
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 216
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->disableVshFeature()V

    .line 218
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->unregisterForVshIncomingSession(Landroid/os/Handler;)V

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->unregisterForVshSessionEstablished(Landroid/os/Handler;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->unregisterForVshSessionTerminated(Landroid/os/Handler;)V

    return-void
.end method

.method public toggleCamera(J)V
    .locals 3

    .line 443
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleCamera sharedId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getSession(J)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;

    new-instance p2, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;)V

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 457
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mImsService:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->switchCamera(Lcom/sec/internal/ims/servicemodules/csh/event/VshSwitchCameraParams;)V

    goto :goto_0

    .line 459
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected illegal share id passed from intent. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastCommunicationError()V

    :goto_0
    return-void
.end method

.method protected updateServiceStatus(I)V
    .locals 4

    .line 851
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->updateServiceStatus(I)V

    .line 854
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsDuringMultipartyCall:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, v0, p1

    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v2, p1

    .line 855
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mRemoteCapabilities:Lcom/sec/ims/options/Capabilities;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    .line 856
    invoke-virtual {p1, v0}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 858
    :goto_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsServiceReady:Z

    if-eq v0, p1, :cond_2

    .line 859
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mIsServiceReady:Z

    if-eqz p1, :cond_1

    .line 861
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastServiceReady()V

    goto :goto_1

    .line 863
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->mVshTranslation:Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VshTranslation;->broadcastServiceNotReady()V

    :cond_2
    :goto_1
    return-void
.end method
