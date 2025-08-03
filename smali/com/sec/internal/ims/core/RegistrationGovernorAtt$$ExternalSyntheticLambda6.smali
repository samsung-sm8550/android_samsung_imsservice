.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorAtt;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorAtt;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorAtt$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorAtt;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorAtt;->$r8$lambda$z6OHGbDLZtGDdOpz00yjvyV37-I(Lcom/sec/internal/ims/core/RegistrationGovernorAtt;Lcom/sec/internal/interfaces/ims/core/IGeolocationController;)V

    return-void
.end method
