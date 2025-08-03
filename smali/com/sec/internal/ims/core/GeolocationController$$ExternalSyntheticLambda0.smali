.class public final synthetic Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/sec/internal/ims/core/GeolocationController;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/internal/ims/core/GeolocationController;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/GeolocationController;

    iput p2, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;->f$1:I

    iput-boolean p3, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;->f$0:Lcom/sec/internal/ims/core/GeolocationController;

    iget v1, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;->f$1:I

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/GeolocationController$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/sec/internal/ims/core/GeolocationController;->$r8$lambda$aLrAyooaeD5ZqY-6hbilWoPpr2w(Lcom/sec/internal/ims/core/GeolocationController;IZ)V

    return-void
.end method
