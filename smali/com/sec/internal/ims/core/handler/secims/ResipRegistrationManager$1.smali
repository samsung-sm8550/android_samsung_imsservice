.class Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;
.super Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
.source "ResipRegistrationManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDnsResponse(Ljava/lang/String;Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDnsResponse: hostname "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ipAddrList "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " port "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", handle "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResipRegiMgr"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    invoke-interface {p0, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyDnsResponse(Ljava/util/List;II)V

    return-void
.end method

.method public onX509CertVerifyRequested(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;)V
    .locals 10

    .line 157
    const-string/jumbo v0, "onX509CertVerifyRequested"

    const-string v1, "ResipRegiMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 161
    :try_start_0
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    move v4, v2

    .line 162
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;->certLength()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 163
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/X509CertVerifyRequest;->cert(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 167
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->certDataLength()I

    move-result v6

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    move v6, v2

    .line 170
    :goto_1
    new-array v7, v6, [B

    move v8, v2

    :goto_2
    if-ge v8, v6, :cond_1

    .line 173
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/Cert;->certData(I)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 176
    :cond_1
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 177
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Issuer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :goto_3
    const-string/jumbo v3, "something wrong with certificate"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager$1;->this$0:Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipRegistrationManager;->mRegistrationHandler:Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;

    new-array p1, v2, [Ljava/security/cert/X509Certificate;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/security/cert/X509Certificate;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;->notifyX509CertVerificationRequested([Ljava/security/cert/X509Certificate;)V

    return-void
.end method
