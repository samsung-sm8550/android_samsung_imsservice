.class public Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;
.super Ljava/lang/Object;
.source "ReferStatus.java"


# instance fields
.field public mRespCode:I

.field public mSessionId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;->mSessionId:I

    .line 21
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/ReferStatus;->mRespCode:I

    return-void
.end method
