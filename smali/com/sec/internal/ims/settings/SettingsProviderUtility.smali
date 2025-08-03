.class public Lcom/sec/internal/ims/settings/SettingsProviderUtility;
.super Ljava/lang/Object;
.source "SettingsProviderUtility.java"


# static fields
.field private static mOldBackupFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    .line 18
    const-string v1, "/efs/ims_setting/ims_setting_bak.dat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/sec/internal/ims/settings/SettingsProviderUtility;->mOldBackupFileList:Ljava/util/ArrayList;

    const-string v1, "/efs/ims_setting/ims_setting.dat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbCreatState(Landroid/content/Context;)Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;
    .locals 3

    const/4 v0, -0x1

    .line 23
    const-string v1, "imsconfig"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 25
    const-string/jumbo v0, "setting_db_created"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 29
    sget-object p0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_CREATING_FAIL:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    :goto_0
    return-object p0

    .line 26
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;->DB_NEVER_CREATED:Lcom/sec/internal/ims/settings/SettingsProviderUtility$DB_CREAT_STATE;

    return-object p0
.end method

.method public static setDbCreated(Landroid/content/Context;Z)V
    .locals 3

    .line 33
    const-string v0, "imsconfig"

    const-string/jumbo v1, "setting_db_created"

    const/4 v2, -0x1

    invoke-static {v2, p0, v0, v1, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
