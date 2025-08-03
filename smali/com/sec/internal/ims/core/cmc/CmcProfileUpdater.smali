.class public Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;
.super Ljava/lang/Object;
.source "CmcProfileUpdater.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcProfileUpdater"


# instance fields
.field private final DEFAULT_PORT:I

.field private final PD_PROFILE_NAME:Ljava/lang/String;

.field private final SD_PROFILE_NAME:Ljava/lang/String;

.field private mAccessToken:Ljava/lang/String;

.field private mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

.field private mDisplayName:Ljava/lang/String;

.field private mDomain:Ljava/lang/String;

.field private mDuid:Ljava/lang/String;

.field private mImpi:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mIsVceConfigEnabled:Z

.field private mName:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPcscfAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPort:I

.field private mPriDeviceIdWithURN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcInfo;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "SamsungCMC_PD"

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->PD_PROFILE_NAME:Ljava/lang/String;

    .line 14
    const-string v0, "SamsungCMC_SD"

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->SD_PROFILE_NAME:Ljava/lang/String;

    const/16 v0, 0x1f40

    .line 15
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->DEFAULT_PORT:I

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 32
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->init()V

    return-void
.end method

.method private impiHasDomain()Z
    .locals 1

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpi:Ljava/lang/String;

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private init()V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SamsungCMC_PD"

    goto :goto_0

    :cond_0
    const-string v0, "SamsungCMC_SD"

    :goto_0
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mName:Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpu:Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpu:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpu:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpi:Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->impiHasDomain()Z

    move-result v0

    const-string v2, "@"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpi:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpi:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPassword:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->impiHasDomain()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpi:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mDomain:Ljava/lang/String;

    .line 41
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mIsVceConfigEnabled:Z

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "urn:duid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mDuid:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mAccessToken:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPriDeviceIdWithURN:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mDisplayName:Ljava/lang/String;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->initPcscfAndPort()V

    return-void
.end method

.method private initPcscfAndPort()V
    .locals 6

    const/16 v0, 0x1f40

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPort:I

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPcscfAddresses:Ljava/util/List;

    .line 57
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    if-eqz v1, :cond_4

    .line 58
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 63
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    add-int/lit8 v5, v4, 0x1

    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    iput v5, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPort:I

    if-lez v4, :cond_2

    const/4 v5, 0x0

    .line 67
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 68
    :cond_2
    const-string v4, "(pcscf = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / port = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPort:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initPcscfAndPort: pcscfList size["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPcscfAddresses:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 59
    :cond_4
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v0, "initPcscfAndPort: PcscfAddrList is empty"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public update(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 2

    if-nez p1, :cond_0

    .line 76
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "update: profile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpu:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpu:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mImpi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPassword(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 86
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mIsVceConfigEnabled:Z

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mDuid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPriDeviceIdWithURN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPort:I

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->mPcscfAddresses:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 94
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcProfileUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update: profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
