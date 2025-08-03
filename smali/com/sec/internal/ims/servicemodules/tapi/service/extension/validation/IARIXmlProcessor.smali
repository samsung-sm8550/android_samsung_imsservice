.class Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;
.super Ljava/lang/Object;
.source "IARIXmlProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IARIXmlProcessor"


# instance fields
.field private authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return-void
.end method

.method private validateCertificateOtherProperties()I
    .locals 5

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "validateCertificateOtherProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getSignature()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->getEntityCertificate()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->getURIIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 69
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v3

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "urn:urn-7:3gpp-application.ims.iari.rcs.ext.ss."

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v3

    .line 77
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->getX509Certificate()Ljava/security/cert/X509Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 78
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->hash([B)Ljava/lang/String;

    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIari()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    const-string v1, "Requested IARI key-specific part does not match signing key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iput v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v3

    :cond_2
    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return v0
.end method


# virtual methods
.method public getAuthDocument()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 55
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return p0
.end method

.method public parseAuthDoc(Ljava/io/InputStream;)V
    .locals 1

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    .line 25
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->parse(Ljava/io/InputStream;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return-void
.end method

.method public process()V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "process: auth doc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 39
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getIariNode()Lorg/w3c/dom/Element;

    move-result-object v1

    const-string v2, "Id"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageSignerNode()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->authDocument:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->getPackageNameNode()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->validateCertificateOtherProperties()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlProcessor;->status:I

    return-void
.end method
