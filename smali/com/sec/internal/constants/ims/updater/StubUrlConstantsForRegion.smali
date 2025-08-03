.class Lcom/sec/internal/constants/ims/updater/StubUrlConstantsForRegion;
.super Ljava/lang/Object;
.source "StubUrlConstantsForRegion.java"

# interfaces
.implements Lcom/sec/internal/constants/ims/updater/StubUrlConstants$IStubUrlConstantsForRegion;


# static fields
.field protected static final URL_PROD_GET_DOWNLOAD_URL:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubDownload.as?"

.field protected static final URL_PROD_UPDATE_CHECK:Ljava/lang/String; = "https://vas.samsungapps.com/stub/stubUpdateCheck.as?"

.field protected static final URL_STG_GET_DOWNLOAD_URL:Ljava/lang/String; = "https://vas.stg.samsungapps.com/stub/stubDownload.as?"

.field protected static final URL_STG_UPDATE_CHECK:Ljava/lang/String; = "https://vas.stg.samsungapps.com/stub/stubUpdateCheck.as?"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProdGetDownloadUrl()Ljava/lang/String;
    .locals 0

    .line 32
    const-string p0, "https://vas.samsungapps.com/stub/stubDownload.as?"

    return-object p0
.end method

.method public getProdUpdateCheckUrl()Ljava/lang/String;
    .locals 0

    .line 27
    const-string p0, "https://vas.samsungapps.com/stub/stubUpdateCheck.as?"

    return-object p0
.end method

.method public getStgGetDownloadUrl()Ljava/lang/String;
    .locals 0

    .line 22
    const-string p0, "https://vas.stg.samsungapps.com/stub/stubDownload.as?"

    return-object p0
.end method

.method public getStgUpdateCheckUrl()Ljava/lang/String;
    .locals 0

    .line 17
    const-string p0, "https://vas.stg.samsungapps.com/stub/stubUpdateCheck.as?"

    return-object p0
.end method

.method public isOAIDUsedForExtuk()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method
