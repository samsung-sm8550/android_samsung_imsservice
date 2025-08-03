.class public Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;
.super Ljava/lang/Object;
.source "ImLatchingProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImLatchingProcessor"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mLatchingUriList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

.field private mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;


# direct methods
.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    .line 35
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private addUriToLatchingList(Lcom/sec/ims/util/ImsUri;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$maddUriToLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)V

    return-void
.end method

.method private getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer-IA;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    return-object p0
.end method


# virtual methods
.method public checkAfterSimChanged(ILjava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckAfterSimChanged(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Ljava/lang/String;)V

    return-void
.end method

.method public checkTimestampInOptionsList(Lcom/sec/ims/util/ImsUri;JI)Z
    .locals 0

    .line 148
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckTimestampInOptionsList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;J)Z

    move-result p0

    return p0
.end method

.method public init(I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 41
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mLatchingUriList:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer-IA;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isExistInLatchingList(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 0

    .line 140
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$misExistInLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method protected normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method public processForResolvingLatchingStatus(Lcom/sec/ims/util/ImsUri;JI)V
    .locals 7

    .line 100
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$misEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Wrong incoming xms. Not processed."

    invoke-static {p0, p4, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    .line 107
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->checkSenderCapability(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Registered. check sending options"

    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 113
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mcheckTimestampInOptionsList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;J)Z

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 118
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 119
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v3, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    sget p2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long p2, p2

    or-long v4, p0, p2

    move v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    goto :goto_0

    .line 125
    :cond_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Not registered. store uri in list"

    invoke-static {p2, p4, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 126
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->addUriToLatchingList(Lcom/sec/ims/util/ImsUri;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public registerXmsReceiver(I)V
    .locals 4

    .line 59
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "register xms receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 62
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    if-nez v0, :cond_1

    .line 67
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    const-string v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    :try_start_0
    const-string v1, "application/vnd.wap.mms-message"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 73
    invoke-virtual {v1}, Landroid/content/IntentFilter$MalformedMimeTypeException;->printStackTrace()V

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    const-string v0, "expire_time_for_resending_options"

    const/4 v1, 0x0

    .line 79
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 78
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$msetOptionsExpireTimer(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;J)V

    return-void
.end method

.method public removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 0

    .line 136
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mremoveUriFromLatchingList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    return p0
.end method

.method public resetUriList(I)V
    .locals 0

    .line 144
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$mresetUriList(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;)V

    return-void
.end method

.method public setXmsReceiverEnabled(IZ)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->getLatchingUriList(I)Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;->-$$Nest$msetEnabled(Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor$MsisdnContainer;Z)V

    return-void
.end method

.method public unregisterXmsReceiver()V
    .locals 3

    .line 83
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregister xms receiver."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 85
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mSmsReceiver:Lcom/sec/internal/ims/servicemodules/im/SmsReceiver;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    if-eqz v0, :cond_1

    .line 90
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->mMmsReceiver:Lcom/sec/internal/ims/servicemodules/im/MmsReceiver;

    :cond_1
    return-void
.end method
