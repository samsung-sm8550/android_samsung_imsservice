.class public Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;
.super Ljava/lang/Object;
.source "MnoStrategyCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeInstance(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 9
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyTypeFactory;->getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;->getStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    .line 12
    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->setPolicyType(Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;)V

    return-object p1
.end method
