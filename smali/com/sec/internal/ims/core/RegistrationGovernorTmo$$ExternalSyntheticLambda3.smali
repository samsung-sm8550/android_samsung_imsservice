.class public final synthetic Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/core/RegistrationGovernorTmo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorTmo$$ExternalSyntheticLambda3;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationGovernorTmo;->$r8$lambda$Ol6nSwhrlxgj2FtOGk7Qqi-zB3I(Lcom/sec/internal/ims/core/RegistrationGovernorTmo;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
