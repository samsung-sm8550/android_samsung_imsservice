.class public Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;
.super Ljava/lang/Object;
.source "UtXmlParse.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UtXmlParse"


# instance fields
.field private mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

.field private mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

.field private mErrorPath:Ljavax/xml/xpath/XPathExpression;

.field private mReplyTimer:Ljavax/xml/xpath/XPathExpression;

.field private mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

.field private mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

.field private mRulePath:Ljavax/xml/xpath/XPathExpression;

.field private mXpath:Ljavax/xml/xpath/XPath;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 56
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 58
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 61
    :goto_0
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mXpath:Ljavax/xml/xpath/XPath;

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_NO_REPLY_TIMER:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mReplyTimer:Ljavax/xml/xpath/XPathExpression;

    .line 65
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ROOT_ACTIVATION:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    .line 66
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_RULE:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    .line 67
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ROOT_BARRING:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

    .line 68
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_ERROR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mErrorPath:Ljavax/xml/xpath/XPathExpression;

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->PARSE_BEHAVIOUR:Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

    return-void
.end method

.method private combineCbType(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;I)V
    .locals 1

    .line 183
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-nez p1, :cond_1

    const/16 p1, 0x66

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    .line 185
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 187
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    :cond_1
    const/16 p2, 0xc

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0xe

    if-ne p1, p2, :cond_3

    const/4 p1, 0x5

    .line 192
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    :cond_3
    const/16 p2, 0xa

    if-ne p1, p2, :cond_4

    const/4 p1, 0x3

    .line 194
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    :cond_4
    const/16 v0, 0xb

    if-ne p1, v0, :cond_5

    const/4 p1, 0x4

    .line 196
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    :cond_5
    const/16 v0, 0xd

    if-ne p1, v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0xf

    if-ne p1, v0, :cond_7

    const/4 p1, 0x6

    .line 200
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    goto :goto_0

    :cond_7
    const/16 v0, 0x10

    if-ne p1, v0, :cond_8

    .line 202
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    :cond_8
    :goto_0
    return-void
.end method

.method private createXPathNode(Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;)Ljavax/xml/xpath/XPathExpression;
    .locals 0

    .line 289
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mXpath:Ljavax/xml/xpath/XPath;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtXPathExpression;->value:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 291
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z
    .locals 2

    const/4 v0, 0x0

    .line 326
    :try_start_0
    sget-object v1, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 327
    const-string/jumbo p1, "true"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    .line 332
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    return v0
.end method

.method private extractCbType(Lorg/w3c/dom/Document;)I
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootBarringElement:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeName(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 501
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->ICB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x66

    return p0

    .line 507
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->OCB:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x68

    return p0

    :cond_2
    :goto_0
    return p1
.end method

.method private static extractInt(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)I
    .locals 1

    .line 339
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 340
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 341
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 342
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 347
    :catch_1
    const-string p0, "UtXmlParse"

    const-string p1, "Invalid integer"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 345
    :goto_0
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    :cond_0
    :goto_1
    const/16 p0, 0x14

    return p0
.end method

.method private static extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;
    .locals 1

    .line 357
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/NodeList;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 360
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractNodeName(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    .line 299
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    .line 302
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1

    .line 312
    :try_start_0
    sget-object v0, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p0, p1, v0}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Node;

    if-eqz p0, :cond_0

    .line 315
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 318
    invoke-virtual {p0}, Ljavax/xml/xpath/XPathExpressionException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getConditionFromName(Ljava/lang/String;)I
    .locals 0

    .line 437
    const-string p0, "busy"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 439
    :cond_0
    const-string p0, "no-answer"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 441
    :cond_1
    const-string p0, "not-reachable"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x3

    return p0

    .line 443
    :cond_2
    const-string p0, "not-logged"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "not-registered"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 445
    :cond_3
    const-string p0, "international-exHC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/16 p0, 0xb

    return p0

    .line 447
    :cond_4
    const-string p0, "international"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0xa

    return p0

    .line 449
    :cond_5
    const-string/jumbo p0, "roaming"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0xe

    return p0

    .line 451
    :cond_6
    const-string p0, "external-list"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/16 p0, 0xc

    return p0

    .line 453
    :cond_7
    const-string/jumbo p0, "other-identity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0xd

    return p0

    .line 455
    :cond_8
    const-string p0, "anonymous"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0xf

    return p0

    .line 457
    :cond_9
    const-string p0, "cp:identity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/16 p0, 0x10

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_0
    const/4 p0, 0x6

    return p0
.end method

.method private getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;
    .locals 6

    .line 465
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 466
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    .line 467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_4

    .line 469
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 470
    const-string/jumbo v5, "text"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    const-string/jumbo v5, "rule-deactivated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 474
    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 475
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    goto :goto_1

    .line 479
    :cond_1
    const-string v5, "media"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 480
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 481
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getMediaTypes(Lorg/w3c/dom/NodeList;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    goto :goto_1

    .line 486
    :cond_2
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditionFromName(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    .line 489
    iget p0, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 p1, -0x1

    if-ne p0, p1, :cond_6

    .line 490
    :cond_5
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 493
    :cond_6
    iget-object p0, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_7

    .line 494
    iget-object p0, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v1
.end method

.method private getForwardData(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;
    .locals 7

    .line 382
    new-instance p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    .line 383
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    move v3, v1

    .line 385
    :goto_1
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 386
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 387
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 388
    const-string v6, "#text"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 391
    :cond_0
    const-string/jumbo v6, "to-target"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 392
    new-instance v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;-><init>()V

    .line 393
    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 394
    iput-object v5, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 395
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 396
    :cond_1
    const-string/jumbo v6, "target"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 397
    new-instance v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    invoke-direct {v6}, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;-><init>()V

    .line 398
    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    .line 399
    iput-object v5, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->value:Ljava/lang/String;

    .line 400
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 402
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 403
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-eqz v5, :cond_2

    .line 404
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->attribute:Ljava/lang/String;

    .line 407
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 409
    :cond_3
    iput-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    return-object p0
.end method

.method private getMediaTypes(Lorg/w3c/dom/NodeList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;"
        }
    .end annotation

    .line 418
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p0

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_2

    .line 422
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 424
    :cond_0
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 425
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 430
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method


# virtual methods
.method public parseCallBarring(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 13

    .line 86
    const-string v0, "id"

    .line 87
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 89
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 90
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractCbType(Lorg/w3c/dom/Document;)I

    move-result v2

    .line 92
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    .line 93
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_9

    const/4 v3, 0x0

    move v4, v3

    .line 95
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_9

    .line 96
    new-instance v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v5}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 97
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    move v6, v3

    .line 98
    :goto_1
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 99
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 100
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "conditions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 101
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;

    move-result-object v8

    iput-object v8, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 102
    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_6

    .line 103
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    move v8, v3

    .line 104
    :goto_2
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 105
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cp:identity"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 106
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    move v10, v3

    .line 107
    :goto_3
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 108
    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "one"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 109
    iget-object v11, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    invoke-interface {v12, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_7

    :cond_0
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 115
    :cond_2
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "actions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v3

    .line 116
    :goto_5
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_6

    .line 117
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 118
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "allow"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 119
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    goto :goto_6

    .line 121
    :cond_3
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_5

    .line 122
    new-instance v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    invoke-direct {v10}, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;-><init>()V

    .line 123
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    .line 124
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    .line 126
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 127
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    if-eqz v11, :cond_4

    .line 128
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    invoke-interface {v9, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->attribute:Ljava/lang/String;

    .line 131
    :cond_4
    iget-object v9, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 138
    :cond_7
    iget-object v6, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    .line 139
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 140
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v7, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 143
    :cond_8
    invoke-direct {p0, v5, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->combineCbType(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;I)V

    .line 144
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v6, "UtXmlParse"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ruleId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " conditions = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " allow = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 150
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    return-object v1
.end method

.method public parseCallForwarding(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 10

    .line 208
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 210
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 211
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 213
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    .line 214
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mReplyTimer:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractInt(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRulePath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v1, 0x0

    move v2, v1

    .line 217
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 218
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "id"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "rule2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "rule3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "-vm"

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "-default"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_5

    .line 224
    :cond_0
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 225
    iput-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    move v5, v1

    move v6, v5

    .line 228
    :goto_1
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 229
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 230
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "conditions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 231
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getConditions(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/Condition;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 233
    :cond_1
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "actions"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 234
    invoke-interface {v7, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->getForwardData(Lorg/w3c/dom/NodeList;)Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    move-result-object v7

    iput-object v7, v4, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 239
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-nez v5, :cond_4

    .line 240
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ge v6, v5, :cond_4

    .line 241
    const-string v4, "UtXmlParse"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore the repeated CFU rule with low priority. id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 245
    :cond_4
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    .line 246
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 247
    iput v1, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 248
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-object v3, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 252
    :cond_5
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 257
    :goto_5
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    return-object v0
.end method

.method public parseCallWaitingOrClip(Ljava/lang/String;)Z
    .locals 2

    .line 76
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 77
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 78
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public parseClir(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x2

    .line 160
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 161
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 162
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mRootActiviationPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractBoolean(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDefaultBehavior:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractString(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    .line 167
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 171
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    return p0

    .line 173
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->CLI_NOT_RESTRICTED:Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlElement;->value:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    .line 177
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public parseError(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 264
    const-string/jumbo v0, "phrase"

    const/4 v1, 0x0

    .line 267
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 268
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mDocumenetbuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 269
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->mErrorPath:Ljavax/xml/xpath/XPathExpression;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->extractNodeList(Ljavax/xml/xpath/XPathExpression;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    .line 271
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 272
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v3, "constraint-failure"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 277
    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 282
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v1
.end method
