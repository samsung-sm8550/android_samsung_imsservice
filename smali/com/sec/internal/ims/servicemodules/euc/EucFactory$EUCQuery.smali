.class Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;
.super Ljava/lang/Object;
.source "EucFactory.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;


# instance fields
.field private final mDialogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation
.end field

.field private mEUCData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mEUCData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 279
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V
    .locals 1

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    if-nez p1, :cond_0

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    const-string p1, "def"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;

    :cond_0
    return-object p1
.end method

.method public getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
    .locals 0

    .line 289
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mEUCData:Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    return-object p0
.end method

.method public hasDialog(Ljava/lang/String;)Z
    .locals 0

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/EucFactory$EUCQuery;->mDialogMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
