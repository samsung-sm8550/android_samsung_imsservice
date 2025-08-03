.class public Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;
.super Ljava/lang/Object;
.source "AcknowledgementMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/translate/TypeTranslator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/translate/TypeTranslator<",
        "Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 46
    new-instance v3, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector-IA;)V

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->remoteUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->handle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v0

    .line 48
    invoke-static {v0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v6

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 52
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v4

    const/4 v7, 0x1

    if-ge v2, v4, :cond_2

    .line 53
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->texts(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 55
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v9

    .line 56
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v10

    if-ne v10, v7, :cond_0

    goto :goto_1

    :cond_0
    move v7, v1

    .line 55
    :goto_1
    invoke-static {v8, v9, v7}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->addText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v1

    .line 61
    :goto_2
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjectsLength()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 62
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjects(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 64
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v9

    .line 65
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->subjectsLength()I

    move-result v10

    if-ne v10, v7, :cond_3

    move v10, v7

    goto :goto_3

    :cond_3
    move v10, v1

    .line 64
    :goto_3
    invoke-static {v8, v9, v10}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 66
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->addSubject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 70
    :cond_5
    invoke-virtual {v3}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->prepareMessageData()V

    .line 72
    invoke-virtual {v3}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 78
    new-instance v0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$1;-><init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    return-object v0

    .line 73
    :cond_6
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string p1, "AcknowledgementMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!"

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 42
    :cond_7
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string p1, "AcknowledgementMessageTranslator, incomplete or null message data!"

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;->translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    move-result-object p0

    return-object p0
.end method
