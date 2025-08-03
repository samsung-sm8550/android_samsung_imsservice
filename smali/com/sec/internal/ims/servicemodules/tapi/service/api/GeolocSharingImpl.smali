.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;
.super Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing$Stub;
.source "GeolocSharingImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

.field private final mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    return-void
.end method

.method private getGeoInfo(Ljava/lang/String;)Lcom/gsma/services/rcs/Geoloc;
    .locals 9

    if-nez p1, :cond_0

    .line 237
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    const-string p1, "geolocation extinfo is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 246
    :cond_0
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 247
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const/4 p1, 0x1

    .line 248
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 p1, 0x2

    .line 249
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    const/4 p1, 0x3

    .line 250
    aget-object p1, p0, p1

    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 251
    array-length p1, p0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 252
    const-string p0, ""

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x4

    .line 254
    aget-object p0, p0, p1

    goto :goto_0

    .line 257
    :goto_1
    new-instance p0, Lcom/gsma/services/rcs/Geoloc;

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/gsma/services/rcs/Geoloc;-><init>(Ljava/lang/String;DDJF)V

    return-object p0
.end method

.method private translatorRejectReason(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 0

    .line 175
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$reason$FtRejectReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    .line 181
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0

    .line 177
    :cond_0
    sget-object p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    return-object p0
.end method


# virtual methods
.method public abortSharing()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 224
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Abort session invitation,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->cancelLocationShare(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    return-void
.end method

.method public acceptInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accept session invitation,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getContentUri()Landroid/net/Uri;

    move-result-object p0

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->acceptLocationShare(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public getDirection()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result p0

    return p0
.end method

.method public getGeoloc()Lcom/gsma/services/rcs/Geoloc;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getGeoloc()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_0

    const-string v1, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getExtInfo()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->getGeoInfo(Ljava/lang/String;)Lcom/gsma/services/rcs/Geoloc;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaapTrafficType()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getMaapTrafficType()Ljava/lang/String;

    move-result-object p0

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaapTrafficType, maapTrafficType = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public getReasonCode()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;->UNSPECIFIED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getCancelReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getRejectReason()Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->translatorRejectReason(Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object p0

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingServiceImpl;->translateToReasonCode(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$ReasonCode;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRemoteContact()Lcom/gsma/services/rcs/contact/ContactId;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRemoteContact="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharingId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getSharingId()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INVITED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_4

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v2, 0x3

    if-eq p0, v2, :cond_2

    const/4 v2, 0x4

    if-eq p0, v2, :cond_0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_4

    const/4 v2, 0x7

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v1, :cond_1

    .line 127
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->REJECTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    goto :goto_0

    .line 128
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v1, :cond_6

    .line 129
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->ABORTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    goto :goto_0

    .line 122
    :cond_2
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->RINGING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    goto :goto_0

    .line 119
    :cond_3
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->STARTED:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    goto :goto_0

    .line 112
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v1, :cond_5

    goto :goto_0

    .line 114
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v1, :cond_6

    .line 115
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;->INITIATING:Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing$State;

    :cond_6
    :goto_0
    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getInsertedTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public rejectInvitation()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 213
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reject session invitation,id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGlsModule:Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/GeolocSharingImpl;->mGeoMsg:Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/gls/IGlsModule;->rejectLocationShare(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
