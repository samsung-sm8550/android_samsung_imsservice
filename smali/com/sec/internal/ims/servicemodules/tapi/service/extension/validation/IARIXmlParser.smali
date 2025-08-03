.class public Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;
.super Ljava/lang/Object;
.source "IARIXmlParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IARIXmlParser"


# instance fields
.field private iariNode:Lorg/w3c/dom/Element;

.field private final mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

.field private mIari:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mPackageSigner:Ljava/lang/String;

.field private mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

.field private packageNameNode:Lorg/w3c/dom/Element;

.field private packageSignerNode:Lorg/w3c/dom/Element;

.field private signatureNode:Lorg/w3c/dom/Element;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;->SELF_SIGNED:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    return-void
.end method

.method private printErrorMessage(Ljava/lang/String;)Z
    .locals 2

    .line 158
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iari xml parse error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getIari()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    return-object p0
.end method

.method public getIariNode()Lorg/w3c/dom/Element;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageNameNode()Lorg/w3c/dom/Element;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getPackageSigner()Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageSignerNode()Lorg/w3c/dom/Element;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getSignature()Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    return-object p0
.end method

.method public getSignatureNode()Lorg/w3c/dom/Element;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->signatureNode:Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public parse(Ljava/io/InputStream;)Z
    .locals 7

    .line 73
    const-string v0, "Id"

    const-string v1, "http://gsma.com/ns/iari-authorisation#"

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 77
    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 78
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :try_start_1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 89
    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 90
    const-string p1, "Invalid IARI xml: iari-authorization is not encoded with UTF-8"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 94
    :cond_0
    const-string v2, "iari-authorisation"

    invoke-interface {p1, v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 95
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-eq v4, v3, :cond_1

    .line 96
    const-string p1, "Invalid IARI xml: invalid number of iari-authorization elements"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const/4 v4, 0x0

    .line 98
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 99
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    if-eq v2, v5, :cond_2

    .line 100
    const-string p1, "Invalid IARI xml: iari-authorization is not the root element"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 104
    :cond_2
    const-string v5, "iari"

    invoke-interface {p1, v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 105
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-eq v6, v3, :cond_3

    .line 106
    const-string p1, "Invalid IARI xml: invalid number of iari elements"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 108
    :cond_3
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    .line 109
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eq v5, v2, :cond_4

    .line 110
    const-string p1, "Invalid IARI xml: iari must be a child of iari-authorization"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 112
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    invoke-interface {v5, v0, v3}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 113
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->iariNode:Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    .line 116
    const-string/jumbo v5, "package-name"

    invoke-interface {p1, v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 117
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-le v6, v3, :cond_5

    .line 119
    const-string p1, "Invalid IARI xml: invalid number of package-name elements"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    if-ne v6, v3, :cond_7

    .line 122
    invoke-interface {v5, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    .line 123
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    if-eq v5, v2, :cond_6

    .line 124
    const-string p1, "Invalid IARI xml: package-name must be a child of iari-authorization"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 126
    :cond_6
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    invoke-interface {v5, v0, v3}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 127
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageNameNode:Lorg/w3c/dom/Element;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    .line 131
    :cond_7
    const-string/jumbo v5, "package-signer"

    invoke-interface {p1, v1, v5}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 132
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-eq v5, v3, :cond_8

    .line 133
    const-string p1, "Invalid IARI xml: invalid number of package-signer elements"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 135
    :cond_8
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    .line 136
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eq v1, v2, :cond_9

    .line 137
    const-string p1, "Invalid IARI xml: package-signer must be a child of iari-authorization"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 139
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0, v3}, Lorg/w3c/dom/Element;->setIdAttribute(Ljava/lang/String;Z)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->packageSignerNode:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    .line 143
    const-string v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string v1, "Signature"

    invoke-interface {p1, v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 144
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-eq v0, v3, :cond_a

    .line 145
    const-string p1, "Invalid IARI xml: invalid number of ds:Signature elements"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 147
    :cond_a
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->signatureNode:Lorg/w3c/dom/Element;

    .line 149
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eq p1, v2, :cond_c

    const-string p1, "Invalid IARI xml: signature node must be a child of iari-authorization"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_b

    goto :goto_0

    :cond_b
    move v3, v4

    :cond_c
    :goto_0
    return v3

    .line 151
    :goto_1
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 152
    const-string p1, "Invalid IARI xml: invalid elements"

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    .line 83
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception reading IARI xml: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 81
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected exception parsing IARI xml:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->printErrorMessage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setSignature(Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string v1, "authType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mAuthType:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser$AuthType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 169
    const-string v2, "iari="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mIari:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 175
    const-string/jumbo v2, "packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 180
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 181
    const-string/jumbo v2, "packageSigner="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mPackageSigner:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/validation/IARIXmlParser;->mSignature:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/SignatureInfo;

    if-eqz p0, :cond_3

    .line 187
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
