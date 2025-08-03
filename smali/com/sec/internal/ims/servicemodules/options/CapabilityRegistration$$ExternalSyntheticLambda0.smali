.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;->f$1:Lcom/sec/ims/ImsRegistration;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;->f$1:Lcom/sec/ims/ImsRegistration;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration$$ExternalSyntheticLambda0;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->$r8$lambda$xZIgOsWv9MZGYpvBtxsLt_0fZS8(Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    return-void
.end method
