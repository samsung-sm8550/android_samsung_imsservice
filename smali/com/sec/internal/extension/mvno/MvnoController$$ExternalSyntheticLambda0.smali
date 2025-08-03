.class public final synthetic Lcom/sec/internal/extension/mvno/MvnoController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;

    check-cast p2, Lcom/sec/internal/extension/mvno/handler/IBaseHandler;

    invoke-static {p1, p2}, Lcom/sec/internal/extension/mvno/MvnoController;->$r8$lambda$LzmEv3lZdT3otwuKXZ-P0vmAPww(Lcom/sec/internal/extension/mvno/MvnoController$HandlerType;Lcom/sec/internal/extension/mvno/handler/IBaseHandler;)V

    return-void
.end method
