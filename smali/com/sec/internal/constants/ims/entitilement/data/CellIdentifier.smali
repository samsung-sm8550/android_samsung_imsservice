.class public Lcom/sec/internal/constants/ims/entitilement/data/CellIdentifier;
.super Ljava/lang/Object;
.source "CellIdentifier.java"


# instance fields
.field public eutranCid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "eutran-cid"
    .end annotation
.end field

.field public geranCid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geran-cid"
    .end annotation
.end field

.field public lac:Ljava/lang/Integer;

.field public tac:Ljava/lang/Integer;

.field public utranCid:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "utran-cid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
