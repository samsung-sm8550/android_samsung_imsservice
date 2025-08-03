.class public Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;
.super Ljava/lang/Object;
.source "FtHttpXmlParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FtHttpXmlParser"

.field private static final NS_FTHTTPEXT:Ljava/lang/String; = "urn:gsma:params:xml:ns:rcs:rcs:up:fthttpext"

.field private static final NS_RRAM:Ljava/lang/String; = "urn:gsma:params:xml:ns:rcs:rcs:rram"

.field private static final ns:Ljava/lang/String;


# instance fields
.field private mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

.field private mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;-><init>()V

    .line 39
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseFromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    move-result-object p0

    return-object p0
.end method

.method private parseFromString(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    .line 52
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 53
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 54
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 56
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 57
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFile(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 58
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    .line 64
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    return-object p0
.end method

.method public static parseResume(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;-><init>()V

    .line 45
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->parseResumeFromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object p0

    return-object p0
.end method

.method private parseResumeFromString(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 72
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 73
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 75
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 76
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileResumeInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parsing result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 79
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpResumeInfo:Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    return-object p0
.end method

.method private readBrandedUrl(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 205
    const-string/jumbo v1, "urn:gsma:params:xml:ns:rcs:rcs:up:fthttpext"

    const-string v2, "branded-url"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 207
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "content-type"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 181
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "data"

    invoke-interface {p1, v0, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "url"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    const-string/jumbo v3, "until"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0

    .line 192
    :cond_0
    const-string v0, ""

    move-object v2, v0

    :goto_0
    const/4 v3, 0x3

    .line 198
    invoke-interface {p1, v3, p0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object p0
.end method

.method private readFile(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    .line 91
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 92
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v3, "file-info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v3, "type"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string/jumbo v3, "thumbnail"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readThumbnailInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 105
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private readFileInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v3, "file-disposition"

    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-virtual {v3, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileDisposition(Ljava/lang/String;)V

    .line 137
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_7

    .line 139
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v3, "file-size"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileSize(J)V

    goto :goto_0

    .line 145
    :cond_1
    const-string v3, "file-name"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setFileName(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    const-string v3, "content-type"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_3
    const-string v3, "data"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    goto :goto_0

    .line 151
    :cond_4
    const-string v3, "branded-url"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readBrandedUrl(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setBrandedUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_5
    const-string/jumbo v3, "playing-length"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readPlayingLength(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setPlayingLength(I)V

    goto/16 :goto_0

    .line 156
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 159
    :cond_7
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v3, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readFileName(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-name"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x2f

    const/16 v3, 0x5f

    .line 172
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    .line 173
    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private readFileResumeInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-resume-info"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    .line 217
    const-string v0, ""

    move-wide v6, v3

    move-wide v4, v6

    .line 218
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v8, 0x3

    if-eq v3, v8, :cond_6

    .line 219
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v9, 0x1

    if-eq v3, v9, :cond_6

    .line 220
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 225
    const-string v8, "file-range"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 226
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v8, "start"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 228
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 231
    :cond_1
    const-string v8, "end"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 233
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 235
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0

    .line 236
    :cond_3
    const-string v8, "data"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string/jumbo v8, "url"

    invoke-interface {p1, v3, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    move-object v0, v3

    .line 241
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0

    .line 243
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 247
    :cond_6
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    invoke-interface {p1, v8, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 249
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/data/info/FtHttpResumeInfo;-><init>(JJLjava/net/URL;)V

    return-object p0
.end method

.method private readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "file-size"

    invoke-interface {p1, v1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 p0, 0x3

    .line 165
    invoke-interface {p1, p0, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method private readPlayingLength(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 263
    const-string/jumbo v1, "urn:gsma:params:xml:ns:rcs:rcs:rram"

    const-string/jumbo v2, "playing-length"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    .line 265
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 254
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 255
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p0

    .line 256
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_0

    .line 254
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private readThumbnailInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->ns:Ljava/lang/String;

    const-string v1, "file-info"

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 114
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 119
    const-string v1, "file-size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readFileSize(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailFileSize(J)V

    goto :goto_0

    .line 121
    :cond_1
    const-string v1, "content-type"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readContentType(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailContentType(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_2
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->mFtHttpFileInfo:Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->readData(Lorg/xmlpull/v1/XmlPullParser;)Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->setThumbnailData(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo$Data;)V

    goto :goto_0

    .line 126
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    const/4 p0, 0x1

    move v1, p0

    :goto_0
    if-eqz v1, :cond_2

    .line 274
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    if-eq v2, p0, :cond_2

    .line 275
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-eq v2, v0, :cond_1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 271
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
