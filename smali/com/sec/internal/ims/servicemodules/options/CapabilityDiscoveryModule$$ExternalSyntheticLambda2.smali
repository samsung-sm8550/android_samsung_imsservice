.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Lcom/sec/ims/options/Capabilities;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$3:Lcom/sec/ims/options/Capabilities;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;->f$3:Lcom/sec/ims/options/Capabilities;

    invoke-static {v0, v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->$r8$lambda$md_fmRU72gXXwUPjyRdUB3_m6ow(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V

    return-void
.end method
