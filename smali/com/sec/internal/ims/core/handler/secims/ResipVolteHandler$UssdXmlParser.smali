.class public Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
.super Ljava/lang/Object;
.source "ResipVolteHandler.java"


# instance fields
.field mXPath:Ljavax/xml/xpath/XPath;

.field mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

.field mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;

.field mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

.field mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

.field mXPathUssdString:Ljavax/xml/xpath/XPathExpression;


# direct methods
.method static bridge synthetic -$$Nest$mparseUssdXml(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->parseUssdXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;
    .locals 1

    .line 316
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 324
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    .line 327
    :try_start_0
    const-string v1, "/ussd-data"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string/jumbo v1, "ussd-string"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdString:Ljavax/xml/xpath/XPathExpression;

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "error-code"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

    .line 331
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "boolean(anyExt/UnstructuredSS-Request)"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPath:Ljavax/xml/xpath/XPath;

    const-string v1, "boolean(anyExt/UnstructuredSS-Notify)"

    invoke-interface {v0, v1}, Ljavax/xml/xpath/XPath;->compile(Ljava/lang/String;)Ljavax/xml/xpath/XPathExpression;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 334
    const-string v0, "ResipVolteHandler"

    const-string v1, "XPath compile failed!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private parseUssdXml(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/xpath/XPathExpressionException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 339
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 342
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;-><init>(Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived-IA;)V

    .line 344
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    const-string v1, "(?i)&(?!(#x?[\\d\\w]+;)|(quot;)|(lt;)|(gt;)|(apos;)|(amp;))"

    const-string v2, "&amp;"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 349
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdData:Ljavax/xml/xpath/XPathExpression;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->NODE:Ljavax/xml/namespace/QName;

    invoke-interface {p1, v1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Lorg/xml/sax/InputSource;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Node;

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathErrorCode:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v1, p1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 352
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathUssdString:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {v2, p1}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error-code"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    const/4 v1, 0x1

    .line 356
    iput-boolean v1, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->hasErrorCode:Z

    goto :goto_0

    .line 358
    :cond_1
    iput-object v2, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mString:Ljava/lang/String;

    .line 360
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiRequest:Ljavax/xml/xpath/XPathExpression;

    sget-object v2, Ljavax/xml/xpath/XPathConstants;->BOOLEAN:Ljavax/xml/namespace/QName;

    invoke-interface {v1, p1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdXmlParser;->mXPathNiNotify:Ljavax/xml/xpath/XPathExpression;

    invoke-interface {p0, p1, v2}, Ljavax/xml/xpath/XPathExpression;->evaluate(Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    .line 365
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 366
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_REQUEST:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    goto :goto_1

    .line 367
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 368
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->NET_INIT_NOTIFY:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    goto :goto_1

    .line 370
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;->RESPONSE_TO_USER_INIT:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived;->mType:Lcom/sec/internal/ims/core/handler/secims/ResipVolteHandler$UssdReceived$Type;

    :goto_1
    return-object v0

    .line 340
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "given ussdXml is null"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
