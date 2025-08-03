.class public final synthetic Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RawSipManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RawSipManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RawSipManager;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RawSipManager$$ExternalSyntheticLambda1;->f$0:Lcom/sec/internal/ims/core/RawSipManager;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RawSipManager;->$r8$lambda$A11lQs6O50yy8RKtqqxVTPyjc_A(Lcom/sec/internal/ims/core/RawSipManager;Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method
