.class public Lcom/sec/internal/ims/servicemodules/gls/GlsData;
.super Ljava/lang/Object;
.source "GlsData.java"


# instance fields
.field private final mDate:Ljava/util/Date;

.field private final mId:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mLocation:Landroid/location/Location;

.field private final mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

.field private final mUri:Lcom/sec/ims/util/ImsUri;

.field private final mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;Landroid/location/Location;Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;Ljava/util/Date;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mId:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 23
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocation:Landroid/location/Location;

    .line 24
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    .line 25
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mDate:Ljava/util/Date;

    .line 26
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLabel:Ljava/lang/String;

    .line 27
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mDate:Ljava/util/Date;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocation:Landroid/location/Location;

    return-object p0
.end method

.method public getLocationType()Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    return-object p0
.end method

.method public getSender()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getValidityDate()Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlsData ["

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sender="

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location type="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLocationType:Lcom/sec/internal/constants/ims/servicemodules/gls/LocationType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shared date="

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", label="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mLabel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validity date="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/gls/GlsData;->mValidityDate:Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/gls/GlsValidityTime;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 90
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
