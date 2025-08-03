.class public final synthetic Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/JibeRcsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/JibeRcsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/settings/JibeRcsRegistration;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/settings/JibeRcsRegistration;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->$r8$lambda$8mJQBa0N2nRnK5dvtBTxA0bDOh0(Lcom/sec/internal/ims/settings/JibeRcsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method
