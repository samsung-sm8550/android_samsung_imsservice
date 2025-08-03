.class Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$mgetUserLocationSettings(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$menforceLocationSettings(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$mrequestLocationUpdates(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    .line 128
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
