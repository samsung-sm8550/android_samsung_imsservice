.class final enum Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$21;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;
.source "RcsPolicyType.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$21-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/RcsPolicyType$21;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getStrategy(Landroid/content/Context;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 141
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;-><init>(Landroid/content/Context;I)V

    return-object p0
.end method
