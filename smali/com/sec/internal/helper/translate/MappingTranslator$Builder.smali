.class public Lcom/sec/internal/helper/translate/MappingTranslator$Builder;
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
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->mMapping:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public buildTranslator()Lcom/sec/internal/helper/translate/MappingTranslator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/internal/helper/translate/MappingTranslator<",
            "TTranslatedType;TResultType;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->mMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkState(Z)V

    .line 125
    new-instance v0, Lcom/sec/internal/helper/translate/MappingTranslator;

    iget-object p0, p0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->mMapping:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/helper/translate/MappingTranslator;-><init>(Ljava/util/Map;Lcom/sec/internal/helper/translate/MappingTranslator-IA;)V

    return-object v0
.end method

.method public map(Ljava/lang/Object;Ljava/lang/Object;)Lcom/sec/internal/helper/translate/MappingTranslator$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTranslatedType;TResultType;)",
            "Lcom/sec/internal/helper/translate/MappingTranslator$Builder<",
            "TTranslatedType;TResultType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 109
    const-string/jumbo v0, "translatedValue can\'t be NULL"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkState(Z)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/helper/translate/MappingTranslator$Builder;->mMapping:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
