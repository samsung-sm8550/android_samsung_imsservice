.class public Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;
.super Ljava/lang/Object;
.source "MigrationHelper.java"


# static fields
.field private static final ENTITLEMENT_CONFIG_DATABASE_NAME:Ljava/lang/String; = "entitlement_config.db"

.field private static final LOG_TAG:Ljava/lang/String; = "MigrationHelper"

.field private static final NSDS_DATABASE_NAME:Ljava/lang/String; = "ericsson_nsds.db"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMigrateDB(Landroid/content/Context;)Z
    .locals 5

    .line 34
    const-string v0, "entitlement.config"

    const-string v1, "000"

    const-string v2, "migrate_to_ce"

    invoke-static {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "migrated"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 40
    :cond_0
    const-string v3, "migrating"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static migrateDBToCe(Landroid/content/Context;)V
    .locals 4

    .line 20
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Migrate entitlement DB/SP"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const-string v0, "ericsson_nsds.db"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z

    .line 22
    const-string v0, "entitlement_config.db"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z

    .line 23
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->migrationToCe(Landroid/content/Context;)Z

    .line 25
    const-string v0, "migrate_to_ce"

    const-string v1, "migrated"

    const-string v2, "entitlement.config"

    const-string v3, "000"

    invoke-static {p0, v2, v3, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveInDe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->reconnectDB(Landroid/content/Context;)V

    return-void
.end method

.method public static reconnectDB(Landroid/content/Context;)V
    .locals 5

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 50
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "reconnect_db"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 54
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
