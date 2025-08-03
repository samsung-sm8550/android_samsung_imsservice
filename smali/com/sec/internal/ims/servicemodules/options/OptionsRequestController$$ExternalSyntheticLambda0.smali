.class public final synthetic Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

.field public final synthetic f$1:Lcom/sec/ims/ImsRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;->f$1:Lcom/sec/ims/ImsRegistration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$$ExternalSyntheticLambda0;->f$1:Lcom/sec/ims/ImsRegistration;

    check-cast p1, Lcom/sec/ims/ImsRegistration;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->$r8$lambda$4L93O3lhQBR8T-3edb-ZRGlowWI(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method
