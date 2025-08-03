.class public final synthetic Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lcom/sec/internal/constants/ims/os/NetworkState;

    invoke-static {p1}, Lcom/sec/internal/ims/core/PdnController;->$r8$lambda$dTwWTGJkxbNx7DM7THpE-F7gjIA(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
