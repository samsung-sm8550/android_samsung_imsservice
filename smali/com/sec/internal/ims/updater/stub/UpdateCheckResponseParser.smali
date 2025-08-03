.class public Lcom/sec/internal/ims/updater/stub/UpdateCheckResponseParser;
.super Lcom/sec/internal/ims/updater/stub/ResponseParser;
.source "UpdateCheckResponseParser.java"


# static fields
.field static final EXTRA_VALUE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

.field private static final TAG:Ljava/lang/String; = "UpdateCheckResponseParser"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    const-string v1, "extraValue"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sec/internal/ims/updater/stub/UpdateCheckResponseParser;->EXTRA_VALUE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/stub/ResponseParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;
    .locals 8

    .line 18
    iget-object v0, p0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->mXml:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    const-string p0, "UpdateCheckResponseParser"

    const-string v0, "Input XML is wrong!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 23
    :cond_0
    new-instance v7, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    sget-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->RESULT_CODE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 24
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/ResponseParser;->parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->RESULT_MSG:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 25
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/ResponseParser;->parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->VERSION_CODE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 26
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/ResponseParser;->parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->CONTENT_SIZE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 27
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/ResponseParser;->parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/sec/internal/ims/updater/stub/UpdateCheckResponseParser;->EXTRA_VALUE:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 28
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/ResponseParser;->parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/sec/internal/ims/updater/stub/ResponseParser;->UPDATE_CHECK_INTERVAL:Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;

    .line 29
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/stub/ResponseParser;->parse(Lcom/sec/internal/ims/updater/stub/ResponseParser$XmlElement;)Ljava/lang/String;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method
