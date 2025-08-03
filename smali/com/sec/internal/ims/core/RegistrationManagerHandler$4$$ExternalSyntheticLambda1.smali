.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;

    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->$r8$lambda$A5chgAMnguddRY0Hev97Jh2aPC4(Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;ILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
