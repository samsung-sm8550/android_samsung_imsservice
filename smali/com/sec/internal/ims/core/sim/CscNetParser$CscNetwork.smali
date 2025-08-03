.class Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;
.super Ljava/lang/Object;
.source "CscNetParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MnoMap_CscNetwork"


# instance fields
.field private mIdentifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mNetworkName:Ljava/lang/String;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mIdentifiers:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addIdentifier(Lcom/sec/internal/ims/core/sim/NetworkIdentifier;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mIdentifiers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getIdentifiers()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/NetworkIdentifier;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mIdentifiers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mNetworkName:Ljava/lang/String;

    return-object p0
.end method

.method public setMnoName(Ljava/lang/String;)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMnoName for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MnoMap_CscNetwork"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser$CscNetwork;->mIdentifiers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;

    .line 50
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/sim/NetworkIdentifier;->setMnoName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
