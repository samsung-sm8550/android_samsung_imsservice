.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;->$r8$lambda$P1wpH1bNON7JrKmuivMYKBnuJAM(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method
