.class public Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
.source "CallBarringData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;-><init>()V

    return-void
.end method

.method static makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 1

    .line 33
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 34
    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->makeInternalRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)V

    const/4 p0, 0x0

    .line 35
    iput-boolean p0, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    return-object v0
.end method


# virtual methods
.method public final clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 1

    .line 51
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 52
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->cloneSsDataInternal(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p0

    return-object p0
.end method

.method copyRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V
    .locals 3

    .line 41
    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 42
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 43
    iget-boolean v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 44
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    invoke-super {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->copySsRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-void
.end method

.method getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->findRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    if-eqz p0, :cond_0

    return-object p0

    .line 28
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    return-object p0
.end method
