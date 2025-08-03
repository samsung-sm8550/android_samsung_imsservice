.class public Lcom/sec/internal/ims/core/cmc/CmcSAState;
.super Ljava/lang/Object;
.source "CmcSAState.java"


# instance fields
.field private mState:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAState;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    return-void
.end method


# virtual methods
.method public is(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)Z
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAState;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdle()Z
    .locals 1

    .line 19
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSAState;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAState$State;->IDLE:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public set(Lcom/sec/internal/ims/core/cmc/CmcSAState$State;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSAState;->mState:Lcom/sec/internal/ims/core/cmc/CmcSAState$State;

    return-void
.end method
