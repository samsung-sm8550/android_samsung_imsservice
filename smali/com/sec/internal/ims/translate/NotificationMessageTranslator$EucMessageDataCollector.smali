.class Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;
.super Ljava/lang/Object;
.source "NotificationMessageTranslator.java"


# instance fields
.field private mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

.field private final mElements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;",
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

.field private mOkButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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

.field final synthetic this$0:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/translate/NotificationMessageTranslator;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->this$0:Lcom/sec/internal/ims/translate/NotificationMessageTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    .line 123
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    .line 124
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    .line 125
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mOkButtons:Ljava/util/Map;

    .line 127
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/translate/NotificationMessageTranslator;Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;-><init>(Lcom/sec/internal/ims/translate/NotificationMessageTranslator;)V

    return-void
.end method

.method private add(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object p1, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    if-nez p1, :cond_0

    .line 181
    iput-object p2, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    :cond_0
    return-void
.end method

.method private createEucMessageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;
    .locals 1

    .line 188
    new-instance v0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector$1;-><init>(Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private releaseTemporaryData()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    .line 172
    iput-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    .line 173
    iput-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mOkButtons:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addOkButton(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mOkButtons:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->addLanguage(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

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
            "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mElements:Ljava/util/Map;

    return-object p0
.end method

.method getDefaultElement()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mDefault:Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    return-object p0
.end method

.method prepareMessageData()V
    .locals 5

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mLanguages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mTexts:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 159
    iget-object v3, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mSubjects:Ljava/util/Map;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->getValue(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 162
    iget-object v4, p0, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->mOkButtons:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/translate/EucTranslatorUtil;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->createEucMessageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->add(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification$IEucMessageData;)V

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/translate/NotificationMessageTranslator$EucMessageDataCollector;->releaseTemporaryData()V

    return-void
.end method
