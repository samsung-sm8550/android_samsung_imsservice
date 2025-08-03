.class public final synthetic Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/volte2/CmcServiceHelper;->$r8$lambda$J08WL3rbJ6Kd25kCei3miwsecVc(Ljava/util/Map$Entry;)Ljava/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method
