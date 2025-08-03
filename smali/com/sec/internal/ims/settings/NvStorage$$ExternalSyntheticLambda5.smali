.class public final synthetic Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/NvStorage;

.field public final synthetic f$1:Lorg/w3c/dom/Element;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/NvStorage;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/settings/NvStorage;

    iput-object p2, p0, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;->f$1:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;->f$0:Lcom/sec/internal/ims/settings/NvStorage;

    iget-object p0, p0, Lcom/sec/internal/ims/settings/NvStorage$$ExternalSyntheticLambda5;->f$1:Lorg/w3c/dom/Element;

    check-cast p1, Lorg/w3c/dom/NamedNodeMap;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/settings/NvStorage;->$r8$lambda$GYYwIbvlLUE45A8f-KR-IMrzQFQ(Lcom/sec/internal/ims/settings/NvStorage;Lorg/w3c/dom/Element;Lorg/w3c/dom/NamedNodeMap;)V

    return-void
.end method
