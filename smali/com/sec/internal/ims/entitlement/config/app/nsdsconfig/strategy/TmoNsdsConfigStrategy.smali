.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/TmoNsdsConfigStrategy;
.super Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;
.source "TmoNsdsConfigStrategy.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;-><init>(Landroid/content/Context;)V

    .line 8
    sget-object p1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    return-void
.end method
