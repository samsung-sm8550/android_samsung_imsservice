.class public Lcom/sec/internal/ims/core/EmergencyDomainUpdater;
.super Ljava/lang/Object;
.source "EmergencyDomainUpdater.java"


# instance fields
.field private final CS_DOMAIN:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private final PS_DOMAIN:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final emergencyDomain:Ljava/lang/String;

.field protected emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

.field private final phoneId:I

.field private final simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field protected targetDomain:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    .line 24
    const-string v0, "PS"

    iput-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->PS_DOMAIN:Ljava/lang/String;

    .line 25
    const-string v1, "CS"

    iput-object v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->CS_DOMAIN:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->context:Landroid/content/Context;

    .line 35
    iput p2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    .line 36
    iput-object p3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    .line 37
    iput-object p4, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 38
    iput-object p5, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyDomain:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    return-void
.end method

.method private isPsDomainWithUicclessOnGlobalSetting()Z
    .locals 2

    .line 153
    iget p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    const-string v0, "no_sim_emergency_domain_setting"

    const-string v1, "CS"

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isPsDomainWithUicclessRegadlessGlobalSetting()Z
    .locals 1

    .line 133
    invoke-direct {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->needCheckGlobalSetting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isDCMOmcCode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 136
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private needCheckGlobalSetting()Z
    .locals 5

    .line 140
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needCheckGlobalSetting: simMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", salesCodeMno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eq v0, v1, :cond_1

    .line 145
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-nez p0, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p0

    if-nez p0, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p0

    if-nez p0, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p0

    if-nez p0, :cond_1

    .line 149
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTSS2_0()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private needCheckSimMobility()Z
    .locals 1

    .line 116
    iget-object p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isOce()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needUpdate(Ljava/lang/String;)Z
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "emergencyCallDomain: already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    const-string v1, "PS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 82
    iget-object p1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    if-nez p1, :cond_1

    .line 83
    iget-object p1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    const-string v1, "emergencyCallDomain: no E911 profile keep e-domain as CS"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static update(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V
    .locals 7

    .line 43
    new-instance v6, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;-><init>(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->update()V

    return-void
.end method


# virtual methods
.method protected doUpdate()V
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update emergency Domain to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 95
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 96
    const-string v1, "emergency_domain_setting"

    iget-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method protected getDomain()Ljava/lang/String;
    .locals 5

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyProfile:Lcom/sec/ims/settings/ImsProfile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->needCheckSimMobility()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    const-string v1, "getDomain: PS"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    const-string p0, "PS"

    return-object p0

    .line 109
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->context:Landroid/content/Context;

    const-string/jumbo v2, "originalEmergencyCallDomain"

    iget-object v3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyDomain:Ljava/lang/String;

    const-string v4, "globalsettings"

    invoke-static {v0, v1, v4, v2, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDomain: originalEmergencyCallDomain "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getDomainWithUiccless()Ljava/lang/String;
    .locals 1

    .line 127
    invoke-direct {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->isPsDomainWithUicclessRegadlessGlobalSetting()Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->isPsDomainWithUicclessOnGlobalSetting()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    const-string p0, "CS"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "PS"

    :goto_1
    return-object p0
.end method

.method protected update()V
    .locals 7

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "emergencyCallDomain: domainInSettings-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyDomain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", SIM absent-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyDomain:Ljava/lang/String;

    const-string v1, "PS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "IMS"

    iget-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "CS"

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, v1

    .line 52
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->getDomain()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    goto :goto_2

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->getDomainWithUiccless()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    .line 56
    iget v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->context:Landroid/content/Context;

    const-string v4, ""

    .line 57
    const-string v5, "globalsettings"

    const-string/jumbo v6, "originalEmergencyCallDomain"

    invoke-static {v2, v3, v5, v6, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    iget v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->phoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->emergencyDomain:Ljava/lang/String;

    invoke-static {v2, v3, v5, v6, v4}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->simManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 67
    iput-object v1, p0, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->targetDomain:Ljava/lang/String;

    goto :goto_3

    .line 68
    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->needUpdate(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->doUpdate()V

    return-void
.end method
