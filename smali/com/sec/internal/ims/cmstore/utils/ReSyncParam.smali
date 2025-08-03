.class public Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;
.super Ljava/lang/Object;
.source "ReSyncParam.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ReSyncParam"

.field private static mChannelResUrl:Ljava/lang/String;

.field private static mChannelURL:Ljava/lang/String;

.field private static mNotifyURL:Ljava/lang/String;

.field private static mRestartToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/cmstore/utils/ReSyncParam-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;

    return-object v0
.end method

.method public static update(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    .line 29
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    .line 30
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASSubscriptionRestartToken()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mRestartToken:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMACallBackURL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mNotifyURL:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMAChannelURL()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelURL:Ljava/lang/String;

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOMASubscriptionResUrl()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelResUrl:Ljava/lang/String;

    .line 35
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReSyncParam: mRestartToken:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mRestartToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ReSyncParam: mNotifyURL:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mNotifyURL:Ljava/lang/String;

    .line 36
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ReSyncParam: mChannelURL:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelURL:Ljava/lang/String;

    .line 37
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ReSyncParam: mChannelResUrl:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelResUrl:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getChannelResURL()Ljava/lang/String;
    .locals 0

    .line 54
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelResUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getChannelURL()Ljava/lang/String;
    .locals 0

    .line 50
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mChannelURL:Ljava/lang/String;

    return-object p0
.end method

.method public getNotifyURL()Ljava/lang/String;
    .locals 0

    .line 46
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mNotifyURL:Ljava/lang/String;

    return-object p0
.end method

.method public getRestartToken()Ljava/lang/String;
    .locals 0

    .line 42
    sget-object p0, Lcom/sec/internal/ims/cmstore/utils/ReSyncParam;->mRestartToken:Ljava/lang/String;

    return-object p0
.end method
