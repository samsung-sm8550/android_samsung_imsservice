.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda2;
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
    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->$r8$lambda$ARizF8eV2qEs48pFD_Bvmq8Ovn8(Ljava/util/concurrent/ScheduledFuture;)Z

    move-result p0

    return p0
.end method
