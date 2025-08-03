.class abstract Lcom/sec/internal/ims/updater/stub/ResponseParser;
.super Ljava/lang/Object;
.source "ResponseParser.java"


# static fields
.field protected static final CONTENT_SIZE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

.field protected static final RESULT_CODE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

.field protected static final RESULT_MSG:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

.field protected static final UPDATE_CHECK_INTERVAL:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

.field protected static final VERSION_CODE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;


# instance fields
.field protected final mXml:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    const-string/jumbo v1, "resultCode"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->RESULT_CODE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 5
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    const-string/jumbo v1, "resultMsg"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->RESULT_MSG:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 6
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    const-string/jumbo v1, "versionCode"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->VERSION_CODE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 7
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    const-string v1, "contentSize"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->CONTENT_SIZE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 8
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    const-string/jumbo v1, "updateCheckInterval"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->UPDATE_CHECK_INTERVAL:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->mXml:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;
    .locals 2

    .line 17
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;->getStartTag()Ljava/lang/String;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->mXml:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    .line 19
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->mXml:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;->getEndTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-ltz v1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->mXml:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->mXml:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 21
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
