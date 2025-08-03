.class Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
.source "CallForwardingData.java"


# instance fields
.field fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;-><init>()V

    .line 10
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 14
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 15
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    return-void
.end method
