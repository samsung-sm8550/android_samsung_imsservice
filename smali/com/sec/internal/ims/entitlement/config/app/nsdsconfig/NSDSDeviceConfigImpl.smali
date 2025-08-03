.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;
.super Landroid/os/Handler;
.source "NSDSDeviceConfigImpl.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;


# static fields
.field private static final FORCE_CONFIG_UPDATE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "NSDSDeviceConfigImpl"

.field private static final RETRIEVE_AKA_TOKEN:I = 0x3

.field private static final RETRIEVE_DEVICE_CONFIG:I = 0x0

.field private static final UPDATE_DEVICE_CONFIG:I = 0x1


# instance fields
.field private mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

.field private mContext:Landroid/content/Context;

.field private mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 30
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 32
    new-instance p1, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    return-void
.end method

.method private retrieveAkaToken(I)V
    .locals 5

    .line 79
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;

    .line 80
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    .line 82
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "akaTokenRetrieval: imsi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 83
    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/AkaTokenRetrievalFlow;->performAkaTokenRetrieval(II)V

    return-void
.end method

.method private retrieveDeviceConfiguration(I)V
    .locals 5

    .line 71
    new-instance v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;

    .line 72
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    .line 74
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieveDeviceConfiguration: imsi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 75
    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/flow/DeviceConfigurationUpdate;->performDeviceConfigRetrieval(II)V

    return-void
.end method


# virtual methods
.method public getDeviceConfig(Ljava/lang/String;I)V
    .locals 3

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    if-ne p2, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x13

    if-ne p2, v0, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->mEntitlementConfigDBHelper:Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->isDeviceConfigAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 46
    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x13

    .line 63
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveAkaToken(I)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x12

    .line 60
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveDeviceConfiguration(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    .line 57
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveDeviceConfiguration(I)V

    goto :goto_0

    :cond_3
    const/16 p1, 0xe

    .line 54
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;->retrieveDeviceConfiguration(I)V

    :goto_0
    return-void
.end method
