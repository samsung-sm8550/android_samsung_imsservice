.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
