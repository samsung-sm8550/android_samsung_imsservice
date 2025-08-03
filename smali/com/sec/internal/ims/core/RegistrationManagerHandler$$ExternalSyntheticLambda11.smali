.class public final synthetic Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[B


# direct methods
.method public synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda11;->f$0:[B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$$ExternalSyntheticLambda11;->f$0:[B

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->$r8$lambda$I0ikyZq4Tk3tqvD3UznfsygzAIk([BLcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method
