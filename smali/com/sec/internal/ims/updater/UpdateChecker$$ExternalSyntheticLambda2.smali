.class public final synthetic Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/UpdateChecker;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    return-void
.end method


# virtual methods
.method public final onResponse(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->$r8$lambda$sc2JLD3bxcIeLQmj1Pa0uCiYMcE(Lcom/sec/internal/ims/updater/UpdateChecker;Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    return-void
.end method
