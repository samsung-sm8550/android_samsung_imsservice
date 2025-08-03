.class public final synthetic Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

.field public final synthetic f$1:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    iput-object p2, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;->f$1:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;->f$1:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->$r8$lambda$CIAm5d_Inqb-UZzstvC5oFbYeXk(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    return-void
.end method
