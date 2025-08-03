.class public final synthetic Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/UpdateChecker;

.field public final synthetic f$1:Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/UpdateChecker;Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;->f$1:Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;->f$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;->f$1:Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->$r8$lambda$B0wc_0ITUI9MHZInLZhh0GltKgE(Lcom/sec/internal/ims/updater/UpdateChecker;Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    return-void
.end method
