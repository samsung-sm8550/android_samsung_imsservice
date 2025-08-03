.class public Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;
.super Landroid/os/Handler;
.source "GeolocationUpdateFlow.java"


# static fields
.field private static final EVENT_LOCATION_UPDATED:I = 0x3

.field private static final EVENT_LOCATION_UPDATE_TIMEOUT:I = 0x1

.field private static final EVENT_STOP_LOCATION_UPDATE:I = 0x2

.field private static final GPS_LOCATION_REQUEST_TIMEOUT:I = 0xafc8

.field private static final LOG_TAG:Ljava/lang/String; = "GeolocationUpdateFlow"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGeoCodeListener:Landroid/location/Geocoder$GeocodeListener;

.field private mLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

.field private mStatus:I

.field private mUserLocationMode:Z


# direct methods
.method static bridge synthetic -$$Nest$menforceLocationSettings(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->enforceLocationSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastKnownAddress(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getLastKnownAddress(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLastKnownGeoLocation(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getLastKnownGeoLocation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUserLocationSettings(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getUserLocationSettings()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestLocationUpdates(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestLocationUpdates()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    .line 65
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    .line 66
    new-instance p1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;

    .line 67
    new-instance p1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeolocCodeListener-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGeoCodeListener:Landroid/location/Geocoder$GeocodeListener;

    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    return-void
.end method

.method private enforceLocationSettings()V
    .locals 2

    .line 106
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "enforceLocationSettings()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const/4 v0, 0x1

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method private getLastKnownAddress(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Address;",
            ">;)V"
        }
    .end annotation

    .line 218
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownAddress()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    .line 227
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 228
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    return-void

    .line 220
    :cond_1
    :goto_0
    const-string p1, "No address is found."

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private getLastKnownGeoLocation()V
    .locals 3

    .line 158
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getLastKnownGeoLocation"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "fused"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_0

    .line 162
    const-string v2, "getLastKnownGeoLocation(): No Last Known Location Available"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->getAddressFromLocation(Landroid/location/Location;)V

    return-void
.end method

.method private getUserLocationSettings()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:Z

    .line 112
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestLocationUpdates()V
    .locals 5

    .line 143
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestLocationUpdates()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :try_start_0
    new-instance v0, Landroid/location/LocationRequest$Builder;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    const/16 v1, 0x64

    .line 147
    invoke-virtual {v0, v1}, Landroid/location/LocationRequest$Builder;->setQuality(I)Landroid/location/LocationRequest$Builder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "fused"

    invoke-virtual {v0}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v0

    sget-object v3, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestLocation(): location req timeout = 45000"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 154
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xafc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private restoreUserLocationSettings()V
    .locals 3

    .line 116
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreUserLocationSettings(): mUserLocationMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-boolean p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mUserLocationMode:Z

    sget-object v1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v1}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method private startGeolocationUpdate()V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$1;-><init>(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopGeolocationUpdate()V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationManager:Landroid/location/LocationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$GeoLocationListener;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 138
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationChanged ex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAddressFromLocation(Landroid/location/Location;)V
    .locals 10

    .line 168
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getAddressFromLocation()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 170
    const-string p1, "Geocoder is not present."

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 175
    const-string p1, "Location is null."

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .line 180
    :cond_1
    new-instance v3, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 184
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    .line 185
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mGeoCodeListener:Landroid/location/Geocoder$GeocodeListener;

    const/4 v8, 0x1

    .line 183
    invoke-virtual/range {v3 .. v9}, Landroid/location/Geocoder;->getFromLocation(DDILandroid/location/Geocoder$GeocodeListener;)V

    .line 187
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    const-string v1, "getAddressFromLocation(): Address req timeout = 45000"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v3, 0xafc8

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 193
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Longitude = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 73
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle msg event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 77
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    check-cast p1, Landroid/location/Address;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;->onAddressObtained(Landroid/location/Address;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    goto :goto_0

    .line 86
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->stopGeolocationUpdate()V

    .line 87
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->restoreUserLocationSettings()V

    .line 88
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method public requestGeolocationUpdate(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V
    .locals 3

    .line 96
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestGeolocationUpdate(): mStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mStatus:I

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->mLocationUpdateListener:Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;

    .line 102
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->startGeolocationUpdate()V

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Flow has already been started."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
