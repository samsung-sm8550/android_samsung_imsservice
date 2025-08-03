.class Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;
.super Ljava/lang/Object;
.source "GeolocationUpdateFlow.java"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 201
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "onLocationChanged"

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;->this$0:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$mgetLastKnownGeoLocation(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 213
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onProviderEnabled"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
