.class Lcom/sec/internal/ims/core/sim/Plmn;
.super Ljava/lang/Object;
.source "SimManagerUtils.java"


# instance fields
.field mcc:I

.field mnc:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/sec/internal/ims/core/sim/Plmn;->mcc:I

    .line 40
    iput p2, p0, Lcom/sec/internal/ims/core/sim/Plmn;->mnc:I

    return-void
.end method
