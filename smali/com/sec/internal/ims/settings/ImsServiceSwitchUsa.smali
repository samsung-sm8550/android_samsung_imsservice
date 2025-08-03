.class public Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;
.super Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;
.source "ImsServiceSwitchUsa.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsServiceSwitchBase;-><init>(Landroid/content/Context;I)V

    .line 11
    const-class p1, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private isSingleRegistrationAndAndroidMsgAppInUse()Z
    .locals 1

    .line 28
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-static {v0, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public isEnabled(Ljava/lang/String;)Z
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 35
    const-string/jumbo v0, "ss"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mSsEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 38
    :cond_2
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVoLteEnabled:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mVolteServiceSwitch:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsServiceSwitch:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    .line 43
    :cond_5
    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;->isSingleRegistrationAndAndroidMsgAppInUse()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 44
    invoke-static {p1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isDownloadableSamsungMsgInUseForUsOpen(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v2

    :cond_7
    :goto_2
    return v1

    :cond_8
    return v2
.end method

.method public isRcsEnabled()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mRcsEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;->isSingleRegistrationAndAndroidMsgAppInUse()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    .line 52
    invoke-static {v0, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isDownloadableSamsungMsgInUseForUsOpen(Landroid/content/Context;I)Z

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

.method public isRcsSwitchEnabled()Z
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/sec/internal/ims/settings/ImsServiceSwitchUsa;->isRcsEnabled()Z

    move-result p0

    return p0
.end method

.method protected overrideImsSwitchForCarrier(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2

    .line 19
    iget v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "XAA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isUSOpenDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    const-string v0, "enableServiceRcs"

    const-string v1, "false"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "enableServiceRcschat"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/settings/ImsServiceSwitch;->mPhoneId:I

    const-string v1, "OYN/XAA case. Disable RCS."

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    :cond_0
    return-object p1
.end method
