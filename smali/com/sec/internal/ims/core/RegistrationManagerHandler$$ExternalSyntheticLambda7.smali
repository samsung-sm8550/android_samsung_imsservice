.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda7;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->$r8$lambda$4FTkcCpEGUF2P_R6uGmrqW-DX4o(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method
