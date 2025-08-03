.class public Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;
.super Ljava/lang/Object;
.source "FtHttpXmlComposer.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/im/interfaces/IFtHttpXmlComposer;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FtHttpXmlComposer"


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

.method private appendAudioMessagingNamespace(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 74
    const-string p0, " xmlns:am=\"urn:gsma:params:xml:ns:rcs:rcs:rram\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendBrandedUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 111
    const-string p0, "\t\t<e:branded-url>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    const-string v0, "&amp;"

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</e:branded-url>\n"

    .line 112
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendContentType(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 98
    const-string p0, "\t\t<content-type>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</content-type>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendDataUrlAndUntil(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 106
    const-string p0, "\t\t<data url=\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    const-string v0, "&amp;"

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" until=\""

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"/>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendFileName(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 0

    .line 94
    const-string p0, "\t\t<file-name>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</file-name>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendFileSize(Ljava/lang/StringBuilder;J)V
    .locals 0

    .line 90
    const-string p0, "\t\t<file-size>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "</file-size>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendFtHttpExtNamespace(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 70
    const-string p0, " xmlns:e=\"urn:gsma:params:xml:ns:rcs:rcs:up:fthttpext\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendFtHttpNamespace(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 66
    const-string p0, " xmlns=\"urn:gsma:params:xml:ns:rcs:rcs:fthttp\""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendPlayingLength(Ljava/lang/StringBuilder;I)V
    .locals 0

    .line 102
    const-string p0, "\t\t<am:playing-length>"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "</am:playing-length>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendThumbnail(Ljava/lang/StringBuilder;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;)V
    .locals 2

    .line 78
    const-string p0, "\t<file-info type=\"thumbnail\">\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t\t<file-size>"

    .line 79
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailFileSize()J

    move-result-wide v0

    .line 79
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "</file-size>\n"

    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t\t<content-type>"

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailContentType()Ljava/lang/String;

    move-result-object p0

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</content-type>\n"

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t\t<data url=\""

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUrl()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" until=\""

    .line 85
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getThumbnailDataUntil()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"/>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t</file-info>\n"

    .line 86
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendXmlVersionAndEncoding(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 62
    const-string p0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public composeXmlForAudioMessage(Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;I)Ljava/lang/String;
    .locals 3

    .line 26
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "buildXMLForAudioMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendXmlVersionAndEncoding(Ljava/lang/StringBuilder;)V

    .line 30
    const-string v1, "<file"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendFtHttpNamespace(Ljava/lang/StringBuilder;)V

    .line 32
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendAudioMessagingNamespace(Ljava/lang/StringBuilder;)V

    .line 34
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getBrandedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendFtHttpExtNamespace(Ljava/lang/StringBuilder;)V

    .line 38
    :cond_0
    const-string v1, ">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->isThumbnailExist()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendThumbnail(Ljava/lang/StringBuilder;Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;)V

    .line 44
    :cond_1
    const-string v1, "\t<file-info type=\"file\" file-disposition=\"render\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileSize()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendFileSize(Ljava/lang/StringBuilder;J)V

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendFileName(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendContentType(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendPlayingLength(Ljava/lang/StringBuilder;I)V

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUrl()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getDataUntil()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendDataUrlAndUntil(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getBrandedUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 52
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/FtHttpFileInfo;->getBrandedUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/util/FtHttpXmlComposer;->appendBrandedUrl(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 55
    :cond_2
    const-string p0, "\t</file-info>\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "</file>\n"

    .line 56
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
