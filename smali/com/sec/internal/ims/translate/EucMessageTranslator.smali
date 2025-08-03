.class Lcom/sec/internal/ims/translate/EucMessageTranslator;
.super Ljava/lang/Object;
.source "EucMessageTranslator.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected translate(Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/TranslationException;
        }
    .end annotation

    if-eqz p1, :cond_d

    .line 41
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 46
    new-instance v3, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector-IA;)V

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->remoteUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->base()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->handle()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/util/ImsUtil;->getHandle(J)I

    move-result v0

    .line 48
    invoke-static {v0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->content()Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 52
    :goto_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->textsLength()I

    move-result v4

    const/4 v5, 0x1

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

    if-ne v10, v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    .line 55
    :goto_1
    invoke-static {v8, v9, v5}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addText(Ljava/lang/String;Ljava/lang/String;)V

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

    if-ne v10, v5, :cond_3

    move v10, v5

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

    invoke-virtual {v3, v8, v4}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addSubject(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v0, v1

    .line 70
    :goto_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->acceptButtonsLength()I

    move-result v2

    if-ge v0, v2, :cond_8

    .line 71
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->acceptButtons(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 73
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v8

    .line 74
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->acceptButtonsLength()I

    move-result v9

    if-ne v9, v5, :cond_6

    move v9, v5

    goto :goto_5

    :cond_6
    move v9, v1

    .line 73
    :goto_5
    invoke-static {v4, v8, v9}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 75
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addAcceptButton(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v0, v1

    .line 79
    :goto_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->rejectButtonsLength()I

    move-result v2

    if-ge v0, v2, :cond_b

    .line 80
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->rejectButtons(I)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 82
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->rejectButtonsLength()I

    move-result v9

    if-ne v9, v5, :cond_9

    move v9, v5

    goto :goto_7

    :cond_9
    move v9, v1

    .line 82
    :goto_7
    invoke-static {v4, v8, v9}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->checkTextLangPair(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->lang()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->text()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->addRejectButton(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 88
    :cond_b
    invoke-virtual {v3}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->prepareMessageData()V

    .line 90
    invoke-virtual {v3}, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->getAllElements()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 96
    new-instance v0, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/translate/EucMessageTranslator$1;-><init>(Lcom/sec/internal/ims/translate/EucMessageTranslator;Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;Ljava/lang/Long;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;)V

    return-object v0

    .line 91
    :cond_c
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string p1, "EucMessageTranslator, failed to create EucMessageData objects, missing required fields in received EUC message!"

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 42
    :cond_d
    new-instance p0, Lcom/sec/internal/helper/translate/TranslationException;

    const-string p1, "EucMessageTranslator, incomplete or null message data!"

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
