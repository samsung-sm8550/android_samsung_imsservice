.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda16;->f$0:Lcom/sec/internal/ims/core/RegistrationManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda16;->f$0:Lcom/sec/internal/ims/core/RegistrationManager;

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
