.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;
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

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationManager;

    check-cast p1, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->$r8$lambda$zA-anwnakMW_y5bgSiPQ6Jrv31Y(Lcom/sec/internal/ims/core/RegistrationManager;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V

    return-void
.end method
