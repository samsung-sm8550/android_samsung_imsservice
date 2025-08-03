.class public Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;
.super Ljava/lang/Object;
.source "IMnoStrategy.java"


# instance fields
.field private final mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

.field private final mDelay:I


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;I)V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    .line 475
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mDelay:I

    return-void
.end method


# virtual methods
.method public getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mCancelReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    return-object p0
.end method

.method public getDelay()I
    .locals 0

    .line 483
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$HttpStrategyResponse;->mDelay:I

    return p0
.end method
