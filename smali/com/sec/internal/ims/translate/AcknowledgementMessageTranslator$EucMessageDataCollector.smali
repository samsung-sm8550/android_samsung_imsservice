.class Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;
.super Ljava/lang/Object;
.source "AcknowledgementMessageTranslator.java"


# instance fields
.field private mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

.field private final mElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTexts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->this$0:Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    .line 115
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    .line 116
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator;)V

    return-void
.end method

.method private add(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    if-nez p1, :cond_0

    .line 163
    iput-object p2, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    :cond_0
    return-void
.end method

.method private createEucMessageData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;
    .locals 1

    .line 169
    new-instance v0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector$1;-><init>(Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private releaseTemporaryData()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    .line 155
    iput-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    .line 156
    iput-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getAllElements()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    return-object p0
.end method

.method getDefaultElement()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    return-object p0
.end method

.method prepareMessageData()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    iget-object v2, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->createEucMessageData(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->add(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;)V

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/translate/AcknowledgementMessageTranslator$EucMessageDataCollector;->releaseTemporaryData()V

    return-void
.end method
