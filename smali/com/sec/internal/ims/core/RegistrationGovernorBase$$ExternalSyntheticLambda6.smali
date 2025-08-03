.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$$ExternalSyntheticLambda6;->f$1:I

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->$r8$lambda$xM1jWykidaNowD8dt7IYV2BJ3zo(Lcom/sec/internal/ims/core/RegistrationGovernorBase;ILcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
