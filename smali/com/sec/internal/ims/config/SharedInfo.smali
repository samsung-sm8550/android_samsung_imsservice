.class public Lcom/sec/internal/ims/config/SharedInfo;
.super Ljava/lang/Object;
.source "SharedInfo.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAKAParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClientPlatform:Ljava/lang/String;

.field private mClientVersion:Ljava/lang/String;

.field private mHttpHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mHttpParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpPort:Ljava/lang/String;

.field private mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

.field private mHttpUrl:Ljava/lang/String;

.field private mHttpsPort:Ljava/lang/String;

.field private mInternal403ErrRetryCount:I

.field private mInternal404ErrRetryCount:I

.field private mInternal503ErrRetryCount:I

.field private mInternal511ErrRetryCount:I

.field private mInternalErrRetryCount:I

.field private mIsRcsByUser:Z

.field private mOidcParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOtp:Ljava/lang/String;

.field private mParsedXml:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsEnabledByUser:Ljava/lang/String;

.field private mRcsProfile:Ljava/lang/String;

.field private mRcsVersion:Ljava/lang/String;

.field private mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mUnknownErrRetryCount:I

.field private mUserImsi:Ljava/lang/String;

.field private mUserMethod:Ljava/lang/String;

.field private mUserMsisdn:Ljava/lang/String;

.field private mXml:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-class p1, Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpUrl:Ljava/lang/String;

    .line 37
    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    .line 39
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    .line 40
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOtp:Ljava/lang/String;

    .line 41
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMsisdn:Ljava/lang/String;

    .line 42
    const-string v2, "GET"

    iput-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMethod:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mXml:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mParsedXml:Ljava/util/Map;

    .line 46
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserImsi:Ljava/lang/String;

    .line 47
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsProfile:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsVersion:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientPlatform:Ljava/lang/String;

    .line 50
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsEnabledByUser:Ljava/lang/String;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternalErrRetryCount:I

    .line 53
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mIsRcsByUser:Z

    .line 54
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal403ErrRetryCount:I

    .line 55
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal404ErrRetryCount:I

    .line 56
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal503ErrRetryCount:I

    .line 57
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal511ErrRetryCount:I

    .line 58
    iput v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUnknownErrRetryCount:I

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mAKAParams:Ljava/util/HashMap;

    .line 62
    const-string v0, "80"

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpPort:Ljava/lang/String;

    .line 64
    const-string v0, "443"

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 69
    iput-object p3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsProfile:Ljava/lang/String;

    .line 70
    iput-object p4, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsVersion:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientPlatform:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsEnabledByUser:Ljava/lang/String;

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "rcsProfile: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " rcsVersion: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " clientVersion: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " rcsEnabledByUser: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCHNInitHttpHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 316
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 319
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "User-Agent"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string p0, "Keep-Alive"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "Connection"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Accept-Language"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    :cond_0
    const-string p0, "max-age=0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Cache-Control"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getCHNInitHttpsHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 355
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "User-Agent"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string p0, "Keep-Alive"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "Connection"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Accept-Language"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 387
    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    .line 390
    :cond_0
    const-string v0, "https?://"

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2f

    .line 391
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x0

    .line 393
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private getInitHttpHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 298
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "User-Agent"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string p0, "Keep-Alive"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "Connection"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 308
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 306
    const-string v0, "Accept-Language"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    const-string p0, "max-age=0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Cache-Control"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getInitHttpParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method private getInitHttpsHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 338
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 340
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "User-Agent"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string p0, "Keep-Alive"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v2, "Connection"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 347
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 345
    const-string v0, "Accept-Language"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_0
    const-string p0, "max-age=0"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "Cache-Control"

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private getInitHttpsParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 373
    const-string/jumbo v1, "vers"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v1, "rcs_version"

    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "rcs_profile"

    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mRcsProfile:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v1, "client_vendor"

    const-string v2, "SEC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientPlatform:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "client_version"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private getInitHttpsParamsSPR()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 382
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addHttpHeader(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addHttpParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public changeConfigProxyUriForHttp()V
    .locals 3

    .line 200
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/cookie/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "ConfigProxyUri: change cookie -> conf"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cookie"

    const-string v2, "conf"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAKAParams()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mAKAParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpParams()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-object p0
.end method

.method public getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    return-object p0
.end method

.method public getInternal403ErrRetryCount()I
    .locals 0

    .line 478
    iget p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal403ErrRetryCount:I

    return p0
.end method

.method public getInternal404ErrRetryCount()I
    .locals 0

    .line 486
    iget p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal404ErrRetryCount:I

    return p0
.end method

.method public getInternal503ErrRetryCount()I
    .locals 0

    .line 494
    iget p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal503ErrRetryCount:I

    return p0
.end method

.method public getInternal511ErrRetryCount()I
    .locals 0

    .line 502
    iget p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal511ErrRetryCount:I

    return p0
.end method

.method public getInternalErrRetryCount()I
    .locals 0

    .line 462
    iget p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternalErrRetryCount:I

    return p0
.end method

.method public getOidcParams()Ljava/util/HashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public getOtp()Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOtp:Ljava/lang/String;

    return-object p0
.end method

.method public getParsedXml()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mParsedXml:Ljava/util/Map;

    return-object p0
.end method

.method public getUnknownErrRetryCount()I
    .locals 0

    .line 510
    iget p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUnknownErrRetryCount:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpUrl:Ljava/lang/String;

    return-object p0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 5

    .line 401
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v0

    .line 402
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalSwVersion()Ljava/lang/String;

    move-result-object v1

    .line 404
    iget-object v2, p0, Lcom/sec/internal/ims/config/SharedInfo;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v2, :cond_0

    .line 405
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getUserAgent: ISimManager is null, return"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string p0, ""

    return-object p0

    .line 408
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 409
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOBILE_CZ:Lcom/sec/internal/constants/Mno;

    .line 410
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 414
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 415
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 414
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 411
    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-le v3, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    .line 412
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 411
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mClientVersion:Ljava/lang/String;

    invoke-static {v2, v0, v1, p0}, Lcom/sec/internal/ims/util/ConfigUtil;->getFormattedUserAgent(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserMethod()Ljava/lang/String;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getUserMsisdn()Ljava/lang/String;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMsisdn:Ljava/lang/String;

    return-object p0
.end method

.method public getXml()Ljava/lang/String;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mXml:Ljava/lang/String;

    return-object p0
.end method

.method public isRcsByUser()Z
    .locals 0

    .line 470
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mIsRcsByUser:Z

    return p0
.end method

.method public parseAkaParams(Ljava/lang/String;)V
    .locals 7

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AKA (Digest) Params parsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 442
    const-string v0, "\\s+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 443
    aget-object p1, p1, v0

    .line 444
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 445
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 446
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    .line 447
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    .line 448
    iget-object v5, p0, Lcom/sec/internal/ims/config/SharedInfo;->mAKAParams:Ljava/util/HashMap;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public parseOidcParams(Ljava/lang/String;)V
    .locals 6

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_0

    .line 429
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    .line 430
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    .line 431
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 432
    aget-object v3, p1, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 433
    aget-object v5, p1, v2

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    .line 434
    iget-object v5, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOidcParams:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeHttpParam(Ljava/lang/String;)V
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetHttpSPR()V
    .locals 4

    .line 130
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change https -> http"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change enriched header -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://oap7.sprintpcs.com/http://"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 139
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpCHN()V
    .locals 6

    .line 94
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change https -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    const/4 v3, 0x1

    .line 102
    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpPort:Ljava/lang/String;

    .line 103
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":443"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change port 443 -> 80"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, ":80"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 112
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getCHNInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 113
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpClean()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 81
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpDefault()V
    .locals 3

    .line 85
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change https -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpProxyDefault()V
    .locals 3

    .line 207
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change https -> http"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 212
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpResponse:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    return-void
.end method

.method public setHttpSPR()V
    .locals 4

    .line 117
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change https -> http"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change http -> enriched header"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://oap7.sprintpcs.com/http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 126
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpsCHN()V
    .locals 6

    .line 166
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https?://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-le v3, v5, :cond_0

    .line 169
    aget-object v3, v0, v4

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpPort:Ljava/lang/String;

    .line 170
    aget-object v3, v0, v5

    iput-object v3, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    .line 171
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_0
    array-length v2, v0

    if-ne v2, v5, :cond_1

    .line 173
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpsPort:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change http -> https"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getCHNInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 183
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpsDefault()V
    .locals 3

    .line 143
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v2, "change http -> https"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 148
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParams()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpsSPR()V
    .locals 4

    .line 187
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change http -> https"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://oap7.sprintpcs.com/https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    const-string v3, "change enriched header -> https"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpHeader:Ljava/util/Map;

    .line 196
    invoke-direct {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getInitHttpsParamsSPR()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpParam:Ljava/util/Map;

    return-void
.end method

.method public setHttpsWithPreviousCookies()V
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Cookie"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setInternal403ErrRetryCount(I)V
    .locals 0

    .line 482
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal403ErrRetryCount:I

    return-void
.end method

.method public setInternal404ErrRetryCount(I)V
    .locals 0

    .line 490
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal404ErrRetryCount:I

    return-void
.end method

.method public setInternal503ErrRetryCount(I)V
    .locals 0

    .line 498
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal503ErrRetryCount:I

    return-void
.end method

.method public setInternal511ErrRetryCount(I)V
    .locals 0

    .line 506
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternal511ErrRetryCount:I

    return-void
.end method

.method public setInternalErrRetryCount(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mInternalErrRetryCount:I

    return-void
.end method

.method public setOtp(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mOtp:Ljava/lang/String;

    return-void
.end method

.method public setParsedXml(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mParsedXml:Ljava/util/Map;

    return-void
.end method

.method public setRcsByUser(Z)V
    .locals 0

    .line 474
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mIsRcsByUser:Z

    return-void
.end method

.method public setUnknownErrRetryCount(I)V
    .locals 0

    .line 514
    iput p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUnknownErrRetryCount:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mHttpUrl:Ljava/lang/String;

    return-void
.end method

.method public setUserImsi(Ljava/lang/String;)V
    .locals 2

    .line 292
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserImsi:Ljava/lang/String;

    .line 293
    iget-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUserImsi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserImsi:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUserMethod(Ljava/lang/String;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMethod:Ljava/lang/String;

    return-void
.end method

.method public setUserMsisdn(Ljava/lang/String;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mUserMsisdn:Ljava/lang/String;

    return-void
.end method

.method public setXml(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/sec/internal/ims/config/SharedInfo;->mXml:Ljava/lang/String;

    return-void
.end method
