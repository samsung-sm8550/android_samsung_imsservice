.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->$r8$lambda$OB_2W3aWB4jdaZ2wDdz_ptOJhFE(Lcom/sec/internal/ims/core/RegistrationGovernorBase;Ljava/util/concurrent/ScheduledFuture;)V

    return-void
.end method
