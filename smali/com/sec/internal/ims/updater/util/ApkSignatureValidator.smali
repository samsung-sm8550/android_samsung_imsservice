.class public Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;
.super Ljava/lang/Object;
.source "ApkSignatureValidator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ApkSignatureValidator"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$FAX98rDmOZVYmmN3GhXN8nZGS7w(Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;Landroid/content/pm/Signature;)[B
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->extractSignature(Landroid/content/pm/Signature;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dt06YdIXGHUsxaVldMpYe8YLIsY(Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;[B)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->convertToJoinedString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jqlkxB1ESUMDtF-d6d6rIpJFqlQ(Ljava/io/File;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->lambda$getFirstSignerSignature$0(Ljava/io/File;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pzGC7SJ8Y6uFEjxheRBZxbxMdfs([BI)Ljava/lang/Byte;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->lambda$convertToJoinedString$3([BI)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$v8CZKPbwl6ke74OUxYT7FcF0EnU([Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->lambda$getFirstSignerSignature$2([Landroid/content/pm/Signature;)Landroid/content/pm/Signature;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w6jV7_A7j6WYs9TjmBXuvaH3Eyo(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->lambda$getFirstSignerSignature$1(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertToJoinedString([B)Ljava/lang/String;
    .locals 1

    .line 66
    array-length p0, p1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda6;-><init>([B)V

    .line 67
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda7;-><init>()V

    .line 68
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 69
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private extractSignature(Landroid/content/pm/Signature;)[B
    .locals 1

    .line 54
    :try_start_0
    const-string p0, "X.509"

    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 55
    new-instance v0, Ljava/io/ByteArrayInputStream;

    .line 56
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 55
    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 57
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extractSignature failed! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ApkSignatureValidator"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getFirstSignerSignature(Ljava/io/File;)Landroid/content/pm/Signature;
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda2;-><init>(Ljava/io/File;)V

    .line 44
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda3;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda4;-><init>()V

    .line 47
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda5;-><init>()V

    .line 48
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/Signature;

    return-object p0
.end method

.method private static synthetic lambda$convertToJoinedString$3([BI)Ljava/lang/Byte;
    .locals 0

    .line 67
    aget-byte p0, p0, p1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFirstSignerSignature$0(Ljava/io/File;Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;
    .locals 1

    .line 44
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x8000000

    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getFirstSignerSignature$1(Landroid/content/pm/PackageInfo;)Landroid/content/pm/SigningInfo;
    .locals 0

    .line 46
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    return-object p0
.end method

.method private static synthetic lambda$getFirstSignerSignature$2([Landroid/content/pm/Signature;)Landroid/content/pm/Signature;
    .locals 1

    const/4 v0, 0x0

    .line 48
    aget-object p0, p0, v0

    return-object p0
.end method


# virtual methods
.method public validate(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    .line 31
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;->getFirstSignerSignature(Ljava/io/File;)Landroid/content/pm/Signature;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;)V

    .line 32
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/util/ApkSignatureValidator$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/util/ApkSignatureValidator;)V

    .line 33
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string p1, ""

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "validate: expected ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ApkSignatureValidator"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validate: actual   ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 39
    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
