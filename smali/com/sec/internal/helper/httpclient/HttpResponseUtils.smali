.class public Lcom/sec/internal/helper/httpclient/HttpResponseUtils;
.super Ljava/lang/Object;
.source "HttpResponseUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseXmlResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sec/internal/helper/httpclient/HttpResponseParams;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    :try_start_0
    new-instance v1, Lcom/sec/internal/helper/httpclient/HttpResponseUtils$1;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/HttpResponseUtils$1;-><init>()V

    .line 31
    new-instance v2, Lcom/stanfy/gsonxml/GsonXmlBuilder;

    invoke-direct {v2}, Lcom/stanfy/gsonxml/GsonXmlBuilder;-><init>()V

    .line 32
    invoke-virtual {v2, v1}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setXmlParserCreator(Lcom/stanfy/gsonxml/XmlParserCreator;)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object v1

    .line 33
    invoke-virtual {v1, p2}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->setTreatNamespaces(Z)Lcom/stanfy/gsonxml/GsonXmlBuilder;

    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lcom/stanfy/gsonxml/GsonXmlBuilder;->create()Lcom/stanfy/gsonxml/GsonXml;

    move-result-object p2

    .line 36
    invoke-virtual {p2, p0, p1}, Lcom/stanfy/gsonxml/GsonXml;->fromXml(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 38
    const-string/jumbo p1, "parseXmlResponse()"

    const-string p2, "cannot parse result"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method
