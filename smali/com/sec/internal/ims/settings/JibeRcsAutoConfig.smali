.class public Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;
.super Lcom/sec/internal/ims/settings/JibeRcsEnabler;
.source "JibeRcsAutoConfig.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IJibeRcsAutoConfig;


# static fields
.field protected static final CALL_METHOD_RESET:Ljava/lang/String; = "resetForJibe"

.field private static final LOG_TAG:Ljava/lang/String; = "JibeRcsAutoConfig"

.field protected static final PREF_KEY_USER_SETTING_PREFIX:Ljava/lang/String; = "rcs_user_setting_subid_"

.field protected static final PREF_NAME_JIBE_CONFIG:Ljava/lang/String; = "jibe_config"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private callReset(I)V
    .locals 3

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.sec.ims.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 41
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 40
    const-string/jumbo v2, "resetForJibe"

    invoke-virtual {p0, v0, v2, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private getLastUserSetting(I)I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;->getUserSettingKey(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    .line 69
    const-string v1, "jibe_config"

    invoke-static {v0, v1, p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getUserSettingKey(I)Ljava/lang/String;
    .locals 1

    .line 85
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "rcs_user_setting_subid_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private storeLastUserSetting(I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    .line 75
    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    const-string v2, "jibe_config"

    .line 81
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;->getUserSettingKey(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    invoke-static {v1, v2, p0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public needClearWorkflowByDmaChange(I)Z
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->isDynamicJibeSupported(I)Z

    move-result p0

    return p0
.end method

.method public onDefaultSmsPackageChanged(I)Z
    .locals 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->isDynamicJibeSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 33
    :cond_0
    const-string v0, "JibeRcsAutoConfig"

    const-string/jumbo v1, "onDefaultSmsPackageChanged: Reset imsprofile/globalsettings."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;->callReset(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public resetRcsUserSetting(I)V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "JibeRcsAutoConfig"

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;->getLastUserSetting(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetRcsUserSetting: Reset to last value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsAutoConfig;->storeLastUserSetting(I)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    const-string/jumbo v3, "rcs_default_enabled"

    .line 63
    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetRcsUserSetting: Reset to default: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void
.end method
