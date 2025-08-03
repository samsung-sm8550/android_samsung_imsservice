.class public final synthetic Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

.field public final synthetic f$1:Lcom/sec/ims/IImsRegistrationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;->f$1:Lcom/sec/ims/IImsRegistrationListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;->f$0:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;->f$1:Lcom/sec/ims/IImsRegistrationListener;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->$r8$lambda$0IxIM0gkUkkc3jsWxqpPrRE1uIU(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method
