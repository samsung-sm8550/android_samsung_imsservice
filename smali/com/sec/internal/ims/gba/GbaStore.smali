.class public Lcom/sec/internal/ims/gba/GbaStore;
.super Ljava/lang/Object;
.source "GbaStore.java"


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/ims/gba/Gbakey;",
            "Lcom/sec/internal/ims/gba/GbaValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getKeys(Lcom/sec/internal/ims/gba/Gbakey;)Lcom/sec/internal/ims/gba/GbaValue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/gba/GbaValue;

    return-object p0
.end method

.method public hasKey(Lcom/sec/internal/ims/gba/Gbakey;)Z
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public putKeys(Lcom/sec/internal/ims/gba/Gbakey;Lcom/sec/internal/ims/gba/GbaValue;)V
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeKey(Lcom/sec/internal/ims/gba/Gbakey;)V
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/gba/GbaStore;->map:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
