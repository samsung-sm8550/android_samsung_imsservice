.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;
.super Ljava/lang/Object;
.source "PackageInfoValidator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PackageInfoValidator"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPackageName:Ljava/lang/String;

.field private mPackageSigner:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkPackageDetails(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;)Z
    .locals 3

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched package name:mPackageName - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageSigner()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    sget-object p1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mismatched package signer:mPackageSigner - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 55
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "package details are successfully validated"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private updatePackageSigner()V
    .locals 4

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    const-wide/32 v2, 0x8000000

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v0

    const/4 v1, 0x0

    .line 36
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->getFingerPrint(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePackageSigner: updated package signer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public processIARIauthorization(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processIARIauthorization"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v1, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;-><init>()V

    .line 63
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->parseAuthDoc(Ljava/io/InputStream;)V

    .line 64
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getStatus()I

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 65
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getAuthDocument()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    move-result-object p1

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->checkPackageDetails(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 68
    const-string p0, "error validating package details"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 72
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->process()V

    .line 73
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->getStatus()I

    move-result p0

    if-nez p0, :cond_1

    .line 74
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v2
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->mPackageName:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/PackageInfoValidator;->updatePackageSigner()V

    return-void
.end method
