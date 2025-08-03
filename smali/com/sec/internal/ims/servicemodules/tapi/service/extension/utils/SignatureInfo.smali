.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;
.super Ljava/lang/Object;
.source "SignatureInfo.java"


# instance fields
.field private final entityCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

.field private final rootCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->rootCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    .line 9
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->entityCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    return-void
.end method


# virtual methods
.method public getEntityCertificate()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->entityCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->entityCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;->rootCert:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/CertificateInfo;

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
