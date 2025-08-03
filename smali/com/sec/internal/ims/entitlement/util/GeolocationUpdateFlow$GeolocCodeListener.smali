.class Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Landroid/location/Geocoder$GeocodeListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 1

    .line 240
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onError"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGeocode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onGeocode"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$mgetLastKnownAddress(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Ljava/util/List;)V

    return-void
.end method
