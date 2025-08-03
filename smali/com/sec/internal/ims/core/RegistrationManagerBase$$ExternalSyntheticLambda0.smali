.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->$r8$lambda$qAMJt887dSph0v2mjJDhhgg_VMU(Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
