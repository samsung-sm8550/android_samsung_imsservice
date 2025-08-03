.class public Lcom/sec/internal/helper/translate/MappingTranslator;
.super Ljava/lang/Object;
.source "MappingTranslator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TranslatedType:",
        "Ljava/lang/Object;",
        "ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TTranslatedType;TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TTranslatedType;TResultType;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Lcom/sec/internal/helper/translate/MappingTranslator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/MappingTranslator;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public isTranslationDefined(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTranslatedType;)Z"
        }
    .end annotation

    .line 82
    iget-object p0, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTranslatedType;)TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object p0, p0, Lcom/sec/internal/helper/translate/MappingTranslator;->mMapping:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 70
    :cond_1
    new-instance p0, Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/helper/translate/MappingTranslator$TranslationException;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
