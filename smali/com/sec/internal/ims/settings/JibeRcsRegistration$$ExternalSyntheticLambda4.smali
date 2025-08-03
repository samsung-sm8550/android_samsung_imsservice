.class public final synthetic Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/settings/JibeRcsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/settings/JibeRcsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/settings/JibeRcsRegistration;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda4;->f$0:Lcom/sec/internal/ims/settings/JibeRcsRegistration;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->$r8$lambda$T1L70E5T84_koRqcVQvQbKQN7Zo(Lcom/sec/internal/ims/settings/JibeRcsRegistration;Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
