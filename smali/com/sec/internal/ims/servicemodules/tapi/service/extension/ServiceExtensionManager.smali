.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
.super Ljava/lang/Object;
.source "ServiceExtensionManager.java"


# static fields
.field private static final CLIENT_JOYN_NAME:Ljava/lang/String; = "gsma.joyn.client"

.field private static final LOG_TAG:Ljava/lang/String; = "ServiceExtensionManager"

.field private static mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;


# instance fields
.field private final clientAppInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

.field private final processedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mauthorise(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authorise(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misPackageProcessed(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isPackageProcessed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$munAuthorise(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->unAuthorise(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    .line 44
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    return-void
.end method

.method private authorise(Ljava/lang/String;)V
    .locals 3

    .line 166
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 170
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "auth"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getXmlResource(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authoriseInternal(Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_0
    return-void
.end method

.method private authoriseAllClients()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isPackageProcessed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 150
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2

    goto :goto_0

    .line 154
    :cond_2
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isSystemApp(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 157
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "auth"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getXmlResource(ILjava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 159
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authoriseInternal(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private authoriseInternal(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 4

    .line 112
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;-><init>(Landroid/content/Context;)V

    .line 113
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->setPackageName(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->processIARIauthorization(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tag is authorised for the package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unAuthorised tag or validation error for the package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_1

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debug binary, ignore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "default-tag"

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 125
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->persistIariTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->closeInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method private closeInputStream(Ljava/io/InputStream;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 188
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 190
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 51
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mInstance:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method private getXmlResource(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 208
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v2, "raw"

    invoke-virtual {p0, v1, v2, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 216
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no auth doc found in client application"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAppAuthorised(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 239
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 240
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "current package: ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 244
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 249
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "ApplicationInfo is Null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 252
    :cond_1
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "system application: ignore"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 256
    :cond_2
    const-string v0, "iari_app_association"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 258
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 260
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 261
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Package name not authorized"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 264
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 265
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrypted iari"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    return v2
.end method

.method private static isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 225
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "error retrieving the package details "

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 229
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isPackageProcessed(Ljava/lang/String;)Z
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static isSystemApp(I)Z
    .locals 1

    .line 0
    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit16 p0, p0, 0x80

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

.method private loadClients()V
    .locals 5

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 97
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 100
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 102
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->isCurrentPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 105
    :cond_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_2

    const-string v3, "gsma.joyn.client"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private loadProcessesPackages()V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    const-string v1, "iari_app_association"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private persistIariTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    const-string v0, "iari_app_association"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 134
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 136
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private unAuthorise(Ljava/lang/String;)V
    .locals 3

    .line 175
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unAuthorise"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    const-string v1, "iari_app_association"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .line 55
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    .line 62
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->loadProcessesPackages()V

    .line 65
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->loadClients()V

    .line 66
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->authoriseAllClients()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->clientAppInfo:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->processedPackages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    if-eqz v0, :cond_0

    .line 73
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->mRcsClientMonitor:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager$RcsClientsMonitor;

    :cond_0
    return-void
.end method
