.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda14;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda14;->f$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->$r8$lambda$dwq9bWjXm5aYvXKjU6YAWf7qy40(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
