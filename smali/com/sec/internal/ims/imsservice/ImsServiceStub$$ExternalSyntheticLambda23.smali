.class public final synthetic Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/GeolocationController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;->f$0:Lcom/sec/internal/ims/core/GeolocationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;->f$0:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/GeolocationController;->dump()V

    return-void
.end method
