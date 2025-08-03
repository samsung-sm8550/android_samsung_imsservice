.class public Lcom/sec/internal/ims/settings/JibeRcsRegistration;
.super Lcom/sec/internal/ims/settings/JibeRcsEnabler;
.source "JibeRcsRegistration.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;


# static fields
.field private static final TAG:Ljava/lang/String; = "JibeRcsRegistration"


# instance fields
.field protected mDeRegisteringTasks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8mJQBa0N2nRnK5dvtBTxA0bDOh0(Lcom/sec/internal/ims/settings/JibeRcsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->isTaskActive(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$QguiKp8WcSF0QRejTJ2ARJnbfA8(Lcom/sec/internal/ims/settings/JibeRcsRegistration;I)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->lambda$addDeRegisteringTask$0(I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T1L70E5T84_koRqcVQvQbKQN7Zo(Lcom/sec/internal/ims/settings/JibeRcsRegistration;Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->lambda$hasActiveTask$1(Ljava/util/Set;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jT5gA__b3a-lfYJA8FUiqxxmg3s(ILandroid/util/SparseArray;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->lambda$getTasks$2(ILandroid/util/SparseArray;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->mDeRegisteringTasks:Landroid/util/SparseArray;

    return-void
.end method

.method private getTasks(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->mDeRegisteringTasks:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda2;-><init>(I)V

    .line 61
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private hasActiveTask(I)Ljava/lang/Boolean;
    .locals 1

    .line 54
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->getTasks(I)Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/settings/JibeRcsRegistration;)V

    .line 55
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 56
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method private isTaskActive(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2

    .line 66
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p0, v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$addDeRegisteringTask$0(I)Ljava/util/Set;
    .locals 1

    .line 38
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 39
    iget-object p0, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->mDeRegisteringTasks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method private static synthetic lambda$getTasks$2(ILandroid/util/SparseArray;)Ljava/util/Set;
    .locals 0

    .line 61
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private synthetic lambda$hasActiveTask$1(Ljava/util/Set;)Ljava/lang/Boolean;
    .locals 1

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/settings/JibeRcsRegistration;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDeRegisteringTask(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 31
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->isDynamicJibeSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    const-string v0, "JibeRcsRegistration"

    const-string v1, "Added as deregistering task"

    invoke-static {v0, p1, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->mDeRegisteringTasks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/settings/JibeRcsRegistration;I)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 41
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTasks(I)V
    .locals 1

    .line 80
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->isDynamicJibeSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->getTasks(I)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration$$ExternalSyntheticLambda0;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public needAwaitDeRegistered(I)Z
    .locals 1

    .line 46
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->isDynamicJibeSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->hasActiveTask(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public needClearTasks(I)Z
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;->isDynamicJibeSupported(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->getTasks(I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;->hasActiveTask(I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
