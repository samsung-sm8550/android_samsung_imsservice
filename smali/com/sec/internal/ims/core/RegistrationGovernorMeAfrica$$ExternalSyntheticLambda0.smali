.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;->$r8$lambda$zcQanF2cfHorNiFJvIVMZk0rhIc(Lcom/sec/internal/ims/core/RegistrationGovernorMeAfrica;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method
