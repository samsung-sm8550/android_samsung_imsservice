.class public final synthetic Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/ims/presence/ServiceTuple;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->$r8$lambda$w4HnB_-s8yJ40P02wi2gKnxkHaU(Lcom/sec/ims/presence/ServiceTuple;)Z

    move-result p0

    return p0
.end method
