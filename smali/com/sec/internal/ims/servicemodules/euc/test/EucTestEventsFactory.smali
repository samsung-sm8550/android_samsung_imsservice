.class public Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;
.super Ljava/lang/Object;
.source "EucTestEventsFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/test/IEucTestEventsFactory;


# static fields
.field private static final LOG_MSG_INVALID_INTENT:Ljava/lang/String; = "Invalid intent, ignoring! "

.field private static final LOG_MSG_NO_EXTRAS:Ljava/lang/String; = "Missing extras in the intent!"

.field private static final LOG_TAG:Ljava/lang/String; = "EucTestEventsFactory"


# instance fields
.field private final mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

.field private final mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

.field private final mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

.field private final mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    .line 73
    new-instance p1, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-direct {p1}, Lcom/sec/internal/ims/translate/PersistentMessageTranslator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    .line 74
    new-instance p1, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-direct {p1}, Lcom/sec/internal/ims/translate/VolatileMessageTranslator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    .line 75
    new-instance p1, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {p1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    .line 76
    new-instance p1, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {p1}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    .line 77
    new-instance p1, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-direct {p1}, Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    return-void
.end method

.method private buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I
    .locals 9

    .line 245
    const-string v0, "handle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 246
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v5

    .line 247
    const-string/jumbo v1, "remote_uri"

    .line 248
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p1, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v6

    .line 249
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getTimestamp(Landroid/os/Bundle;)J

    move-result-wide v7

    int-to-long v3, v0

    move-object v2, p1

    .line 251
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/BaseMessage;->createBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;JIIJ)I

    move-result p0

    return p0
.end method

.method private buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I
    .locals 6

    .line 255
    const-string/jumbo v0, "text_list"

    invoke-direct {p0, p2, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    const-string/jumbo v2, "text_lang_list"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 261
    :cond_0
    const-string/jumbo v2, "subject_list"

    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 263
    const-string/jumbo v4, "subject_lang_list"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 264
    invoke-direct {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 267
    :cond_1
    sget-object p2, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v4, "buildEucContent, texts"

    invoke-static {p2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v0

    .line 269
    const-string v1, "buildEucContent, subjects"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object p0

    .line 272
    invoke-static {p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->createTextsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p2

    .line 273
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->createSubjectsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result p0

    .line 275
    invoke-static {p1, p2, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/EucContent;->createEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;II)I

    move-result p0

    return p0
.end method

.method private buildRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I
    .locals 11

    .line 307
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "buildRequestMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string/jumbo v1, "pin_indication"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 310
    const-string v1, "external_eucr"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    const-string v2, "accept_button_list"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    invoke-direct {p0, p2, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 317
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 318
    const-string v3, "accept_button_lang_list"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    invoke-direct {p0, p2, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 322
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 323
    const-string/jumbo v4, "reject_button_list"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 324
    invoke-direct {p0, p2, v4}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 327
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 328
    const-string/jumbo v5, "reject_button_lang_list"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 329
    invoke-direct {p0, p2, v5}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 332
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v5

    .line 333
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result p2

    const/4 v6, 0x0

    .line 335
    new-array v9, v6, [I

    .line 336
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    .line 337
    const-string v9, "buildRequestMessage, acceptButtons"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v9

    .line 340
    :cond_4
    invoke-static {p1, v9}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->createAcceptButtonsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v1

    .line 343
    new-array v2, v6, [I

    .line 344
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 345
    const-string v2, "buildRequestMessage, rejectButtons"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v2

    .line 348
    :cond_5
    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->createRejectButtonsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v6

    move-object v2, p1

    move v3, v5

    move v4, p2

    move v5, v1

    .line 351
    invoke-static/range {v2 .. v8}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/RequestMessage;->createRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;IIIIZZ)I

    move-result p0

    return p0
.end method

.method private buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/flatbuffers/FlatBufferBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 282
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 283
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v2, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    const-string v0, "If more than one element is presented a language (lang) attribute must be present with the two letter language codes according to the ISO 639-1"

    invoke-static {p3, v0}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 287
    new-array p3, v2, [I

    .line 288
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result p0

    .line 289
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->startTextLangPair(Lcom/google/flatbuffers/FlatBufferBuilder;)V

    .line 290
    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->addText(Lcom/google/flatbuffers/FlatBufferBuilder;I)V

    .line 291
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->endTextLangPair(Lcom/google/flatbuffers/FlatBufferBuilder;)I

    move-result p0

    aput p0, p3, v1

    goto :goto_3

    .line 293
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    const-string v0, "Text and language size does not match"

    invoke-static {v2, v0}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 295
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 296
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 297
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v2

    .line 298
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v3

    .line 299
    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/TextLangPair;->createTextLangPair(Lcom/google/flatbuffers/FlatBufferBuilder;II)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move-object p3, v0

    :goto_3
    return-object p3
.end method

.method private checkNoBaseExtras(Landroid/os/Bundle;)Z
    .locals 0

    .line 441
    const-string p0, "handle"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "id"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "remote_uri"

    .line 442
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkNoEucDataExtras(Landroid/os/Bundle;)Z
    .locals 0

    .line 471
    const-string p0, "handle"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "id"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "remote_uri"

    .line 472
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkNoSystemRequestExtras(Landroid/os/Bundle;)Z
    .locals 0

    .line 450
    const-string/jumbo p0, "system_type"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "system_data"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private checkNoUserConsentExtras(Landroid/os/Bundle;)Z
    .locals 0

    .line 460
    const-string/jumbo p0, "title"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "message"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "subscriber_identity"

    .line 461
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 401
    const-string p0, "extras is null"

    invoke-static {p1, p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string p0, "key is null"

    invoke-static {p2, p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 406
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 408
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_0

    .line 411
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTimestamp(Landroid/os/Bundle;)J
    .locals 2

    .line 395
    const-string/jumbo p0, "timestamp"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method private logInvalidIntent(Lcom/sec/internal/helper/translate/TranslationException;)V
    .locals 2

    .line 428
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid intent, ignoring! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logNoExtras()V
    .locals 1

    .line 432
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Invalid intent, ignoring! Missing extras in the intent!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 476
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/sec/internal/ims/translate/TypeTranslator<",
            "TT;TS;>;)TS;"
        }
    .end annotation

    .line 419
    :try_start_0
    invoke-interface {p2, p1}, Lcom/sec/internal/ims/translate/TypeTranslator;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logInvalidIntent(Lcom/sec/internal/helper/translate/TranslationException;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public createAcknowledgement(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
    .locals 6

    .line 126
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createAcknowledgement"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 129
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 134
    :cond_0
    const-string v1, "ack_status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 137
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v4

    .line 138
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result p1

    .line 141
    const-string/jumbo v5, "ok"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 142
    const-string v1, "createAcknowledgement, status ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 144
    :cond_1
    const-string v3, "error"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const-string v1, "createAcknowledgement, status error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "createAcknowledgement, unrecognized status, assuming error!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v3, 0x1

    .line 150
    :goto_1
    invoke-static {v2, v4, p1, v3}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->createAckMessage(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result p1

    .line 152
    invoke-virtual {v2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 153
    invoke-virtual {v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;->getRootAsAckMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/AckMessage;

    move-result-object p1

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mAcknowledgementMessageTranslator:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;

    return-object p0

    .line 130
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createEucData(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 14

    .line 358
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createEucData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    .line 361
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoEucDataExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_5

    .line 366
    :cond_0
    const-string v1, "handle"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 369
    :try_start_0
    invoke-static {v1}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getOwnIdentity(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/helper/translate/TranslationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    const-string/jumbo v2, "remote_uri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v0

    .line 379
    :cond_1
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    const-string/jumbo v3, "timeout"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 382
    new-instance v6, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    const-wide/16 v7, 0x0

    cmp-long v5, v3, v7

    if-nez v5, :cond_2

    .line 383
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    :goto_0
    invoke-direct {v6, v0, v1, v5, v2}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    .line 384
    const-string/jumbo v0, "user_pin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 385
    const-string v0, "external_eucr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    .line 386
    const-string/jumbo v0, "user_accept"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 387
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    :goto_1
    move-object v10, v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    goto :goto_1

    .line 388
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getTimestamp(Landroid/os/Bundle;)J

    move-result-wide v11

    .line 390
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    if-eqz v8, :cond_4

    const/4 p0, 0x1

    :goto_3
    move v7, p0

    goto :goto_4

    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    .line 391
    :goto_4
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 390
    invoke-interface/range {v5 .. v13}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZLjava/lang/String;ZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p0

    return-object p0

    :catch_0
    return-object v0

    .line 362
    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    return-object v0
.end method

.method public createNotification(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;
    .locals 7

    .line 160
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 163
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-string/jumbo v2, "ok_button_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 173
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    const-string/jumbo v3, "ok_button_lang_list"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 175
    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 178
    :cond_2
    new-instance v3, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 179
    invoke-direct {p0, v3, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result v5

    .line 180
    invoke-direct {p0, v3, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildEucContent(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result p1

    .line 182
    new-array v4, v4, [I

    .line 183
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 184
    const-string v4, "createNotification, okButtons"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildTextLangPairList(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;Ljava/util/List;)[I

    move-result-object v4

    .line 187
    :cond_3
    invoke-static {v3, v4}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->createOkButtonsVector(Lcom/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v0

    .line 190
    invoke-static {v3, v5, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->createNotificationMessage(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result p1

    .line 192
    invoke-virtual {v3, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 194
    invoke-virtual {v3}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;->getRootAsNotificationMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/NotificationMessage;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mNotificationMessageTranslator:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;

    return-object p0

    .line 164
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createPersistent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 2

    .line 82
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createPersistent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 85
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 91
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result p1

    .line 92
    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;->createPersistentMessage(Lcom/google/flatbuffers/FlatBufferBuilder;I)I

    move-result p1

    .line 94
    invoke-virtual {v0, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 96
    invoke-virtual {v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 95
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;->getRootAsPersistentMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/PersistentMessage;

    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mPersistentMessageTranslator:Lcom/sec/internal/ims/translate/PersistentMessageTranslator;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    return-object p0

    .line 86
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createSystemRequest(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
    .locals 4

    .line 201
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createSystemRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 204
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoBaseExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoSystemRequestExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    const-string/jumbo v0, "system_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "system_data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 213
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 214
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->makeStrNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v1

    .line 215
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildBaseMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result p1

    .line 217
    invoke-static {v2, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->createSystemMessage(Lcom/google/flatbuffers/FlatBufferBuilder;III)I

    move-result p1

    .line 219
    invoke-virtual {v2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 220
    invoke-virtual {v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;->getRootAsSystemMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/SystemMessage;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mSystemRequestMessageTranslator:Lcom/sec/internal/ims/translate/SystemRequestMessageTranslator;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;

    return-object p0

    .line 205
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createUserConsent(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;
    .locals 8

    .line 227
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createUserConsent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 230
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->checkNoUserConsentExtras(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 236
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 237
    const-string/jumbo v0, "user_accept"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 238
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->getTimestamp(Landroid/os/Bundle;)J

    move-result-wide v2

    .line 239
    const-string/jumbo p0, "subscriber_identity"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 241
    new-instance p0, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/euc/data/AutoconfUserConsentData;-><init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 231
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public createVolatile(Landroid/content/Intent;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
    .locals 4

    .line 103
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createVolatile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->logNoExtras()V

    const/4 p0, 0x0

    return-object p0

    .line 111
    :cond_0
    const-string/jumbo v0, "timeout"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    new-instance v2, Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/flatbuffers/FlatBufferBuilder;-><init>(I)V

    .line 114
    invoke-direct {p0, v2, p1}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->buildRequestMessage(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Bundle;)I

    move-result p1

    .line 115
    invoke-static {v2, p1, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;->createVolatileMessage(Lcom/google/flatbuffers/FlatBufferBuilder;IJ)I

    move-result p1

    .line 117
    invoke-virtual {v2, p1}, Lcom/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 119
    invoke-virtual {v2}, Lcom/google/flatbuffers/FlatBufferBuilder;->dataBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 118
    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;->getRootAsVolatileMessage(Ljava/nio/ByteBuffer;)Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/EucMessage_/VolatileMessage;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->mVolatileMessageTranslator:Lcom/sec/internal/ims/translate/VolatileMessageTranslator;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/test/EucTestEventsFactory;->translateMessageToRequest(Ljava/lang/Object;Lcom/sec/internal/ims/translate/TypeTranslator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;

    return-object p0
.end method
