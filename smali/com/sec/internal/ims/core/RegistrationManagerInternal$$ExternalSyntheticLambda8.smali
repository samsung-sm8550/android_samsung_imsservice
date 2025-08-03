.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;->f$0:I

    iput p2, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;->f$0:I

    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->$r8$lambda$ZKNZhMvQiwDKdU5Dz84d7XQ5JxA(IILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
