.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# instance fields
.field private final mCert:Ljava/security/cert/X509Certificate;

.field private mUriIdentity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->mCert:Ljava/security/cert/X509Certificate;

    .line 22
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->loadSanData()V

    return-void
.end method

.method private loadSanData()V
    .locals 3

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->mCert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 33
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->mUriIdentity:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/security/cert/CertificateParsingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getURIIdentity()Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->mUriIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;->mCert:Ljava/security/cert/X509Certificate;

    return-object p0
.end method
