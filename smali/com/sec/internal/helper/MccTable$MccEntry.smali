.class Lcom/sec/internal/helper/MccTable$MccEntry;
.super Ljava/lang/Object;
.source "MccTable.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sec/internal/helper/MccTable$MccEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final mIso:Ljava/lang/String;

.field final mMcc:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iput p1, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mMcc:I

    .line 29
    iput-object p2, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/sec/internal/helper/MccTable$MccEntry;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/sec/internal/helper/MccTable$MccEntry;->mMcc:I

    iget p1, p1, Lcom/sec/internal/helper/MccTable$MccEntry;->mMcc:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 20
    check-cast p1, Lcom/sec/internal/helper/MccTable$MccEntry;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/MccTable$MccEntry;->compareTo(Lcom/sec/internal/helper/MccTable$MccEntry;)I

    move-result p0

    return p0
.end method
