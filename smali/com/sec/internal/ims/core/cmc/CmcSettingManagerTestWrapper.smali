.class public Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;
.super Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;
.source "CmcSettingManagerTestWrapper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    return-void
.end method

.method private getTestPdDeviceId()Ljava/lang/String;
    .locals 0

    .line 99
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_PD_DEVICEID:Ljava/lang/String;

    return-object p0
.end method

.method private getTestSdDeviceId()Ljava/lang/String;
    .locals 0

    .line 103
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_SD_DEVICEID:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getCmcSaAccessToken()Ljava/lang/String;
    .locals 0

    .line 95
    const-string/jumbo p0, "testAccessToken"

    return-object p0
.end method

.method public getCmcSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .line 27
    const-string/jumbo v0, "pd"

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;->getTestPdDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_0
    const-string/jumbo v0, "sd"

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;->getTestSdDeviceId()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 29
    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;->getTestPdDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;->getTestSdDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;->getTestPdDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    const-string/jumbo p0, "pd"

    return-object p0

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerTestWrapper;->getTestSdDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 66
    const-string/jumbo p0, "sd"

    return-object p0

    :cond_2
    return-object v1
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 42
    sget-object p0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_LINEID:Ljava/lang/String;

    return-object p0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 1

    .line 55
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sip:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcConstants$TestConstants;->TEST_LINEID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@samsungims.com"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnCmcActivation()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public getPcscfAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    const-string/jumbo v0, "pcscf2-c0.ane2.mdc-dev.net:8000"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getPreferredNetwork()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
