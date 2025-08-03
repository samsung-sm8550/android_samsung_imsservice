.class public Lcom/sec/internal/constants/ims/entitilement/data/Network3gpp;
.super Ljava/lang/Object;
.source "Network3gpp.java"


# instance fields
.field public cellIdentifiers:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cell-identifiers"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/CellIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field public enableDataRoaming:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable-data-roaming"
    .end annotation
.end field

.field public plmn:Ljava/lang/Integer;

.field public ratBands:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rat-bands"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/constants/ims/entitilement/data/RatBand;",
            ">;"
        }
    .end annotation
.end field

.field public ratType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rat-type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
