.class public Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
.super Ljava/lang/Object;
.source "GbaHttpController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GbaHttpController"


# instance fields
.field private mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

.field mLastAuthInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;


# direct methods
.method public static synthetic $r8$lambda$Co8AZRbn8Yha6NJaJfzBIazOZj0(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->lambda$clearLastAuthInfo$0(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;)Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmGbaServiceModule(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgbaCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaCallbacksDeQ(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgbaFailCallbacksDeQ(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetGbaCallback(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getGbaCallback(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetWwwAuthenticateHeader(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getWwwAuthenticateHeader(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloggingHttpMessage(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBsfRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRequestWithAuthorization(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstoreLastAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->storeLastAuthInfo(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$museGba(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->useGba(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smisNeedCSFB(II)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isNeedCSFB(II)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 83
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;-><init>()V

    return-void
.end method

.method private buildUrl(IZLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 637
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x1bb

    if-eq p4, v0, :cond_1

    if-eqz p2, :cond_0

    .line 638
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/Mno;->SPARK:Lcom/sec/internal/constants/Mno;

    filled-new-array {p2}, [Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 641
    :cond_0
    const-string p1, "http://"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 639
    :cond_1
    :goto_0
    const-string p1, "https://"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    :goto_1
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2f

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 646
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private gbaCallbacksDeQ(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallback(I)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 652
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->removeGbaCallback(I)V

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    .line 653
    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(ILjava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    :cond_0
    return-void
.end method

.method private gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getGbaCallback(I)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->removeGbaCallback(I)V

    .line 661
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onFail(ILcom/sec/internal/ims/gba/GbaException;)V

    :cond_0
    return-void
.end method

.method private static getAcceptEncoding(I)Ljava/lang/String;
    .locals 5

    .line 701
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 702
    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 703
    const-string p0, ""

    return-object p0

    .line 706
    :cond_0
    const-string p0, "*"

    return-object p0
.end method

.method private getBsfRequestCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;
    .locals 11

    .line 568
    new-instance v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;

    move-object v0, v10

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object v4, p2

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$5;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZ)V

    return-object v10
.end method

.method private getGbaCallback(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;
    .locals 1

    .line 549
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$4;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;
    .locals 1

    .line 91
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    return-object v0
.end method

.method private getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/sec/internal/ims/gba/GbaUtility;->generateLastAuthInfoKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    return-object p0
.end method

.method private getWwwAuthenticateHeader(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 3

    .line 617
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    .line 618
    const-string p1, "WWW-Authenticate"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 619
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 620
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/util/List;

    :cond_1
    const/4 p0, 0x0

    if-eqz v0, :cond_3

    .line 622
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 627
    :cond_2
    :try_start_0
    new-instance p1, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {p1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 629
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWwwAuthenticateHeader: unable to parse wwwAuthHeader : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0
.end method

.method private hidePrivateInfoFromMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 795
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result p0

    if-nez p0, :cond_0

    return-object p1

    .line 802
    :cond_0
    const-string/jumbo p0, "sip:+[0-9+-]+"

    const-string/jumbo v0, "sip:xxxxxxxxxxxxxxx"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 804
    const-string/jumbo p1, "tel:+[0-9+-]+"

    const-string/jumbo v0, "tel:xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 806
    const-string p1, "imei:+[0-9+-]+"

    const-string v0, "imei:xxxxxxxx"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 808
    const-string/jumbo p1, "username=\"+[^\"]+"

    const-string/jumbo v0, "username=xxxxxxxxxxxxxxx"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 811
    const-string p1, "\"+[0-9+-]+\""

    const-string v0, "\"xxxxxxxxxxxxxxx\""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 813
    const-string/jumbo p1, "target>+.+</.*target"

    const-string/jumbo v0, "target>xxxxxxxxxxxxxxx</target"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isKeyAlive(Ljava/util/Date;)Z
    .locals 8

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 758
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 760
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 761
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 763
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    int-to-long v4, p0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method private static isNeedCSFB(II)Z
    .locals 1

    .line 692
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 693
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x191

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isValidAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;)Z
    .locals 5

    if-eqz p1, :cond_1

    .line 733
    iget-object v0, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 734
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 735
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v1, 0x0

    .line 738
    :try_start_0
    iget-object v2, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 740
    sget-object v2, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lifetime parseException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->reset()V

    move-object v0, v1

    .line 743
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isKeyAlive(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 746
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v0, "Btid LifeTime expired"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iput-object v1, p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->LifeTime:Ljava/lang/String;

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$clearLastAuthInfo$0(ILjava/util/Map$Entry;)Z
    .locals 2

    .line 98
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-subId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private loggingHttpMessage(Ljava/lang/String;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 770
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 773
    :cond_1
    const-string v0, "HttpRequestParams.*\r\n.*mMethod: "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 774
    const-string v0, "HttpResponseParams.*\r\n.*mStatusCode="

    const-string v1, "HTTP/1.1 "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 775
    const-string v0, "\r\n.*mUrl: "

    const-string v1, " "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 776
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->hidePrivateInfoFromMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 778
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string p1, "MM/dd/yyyy HH:mm:ss.SSS"

    .line 779
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 780
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 782
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object v0

    if-nez v0, :cond_2

    .line 785
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string p1, "NULL Diag Mointor Pointer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 789
    :cond_2
    const-string v7, ""

    const-string v8, ""

    const/4 v1, 0x1

    const/16 v3, 0x64

    const-string v6, ""

    move v4, p2

    invoke-interface/range {v0 .. v8}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->onIndication(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;",
            ")",
            "Lcom/sec/internal/helper/httpclient/HttpRequestParams;"
        }
    .end annotation

    .line 667
    new-instance p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)V

    .line 669
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 673
    :cond_0
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 674
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 677
    :cond_1
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->isReuseConnection()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReuseConnection(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 678
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 679
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 680
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIgnoreServerCert()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setIgnoreServerCert(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 681
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getConnectionTimeout()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 682
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getReadTimeout()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 683
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 684
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseProxy()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 685
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setToken(I)V

    .line 686
    invoke-virtual {p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCipherSuiteType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuiteType(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-object p0
.end method

.method private sendBsfRequestWithAuthorization(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v7, p8

    .line 437
    sget-object v10, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GBA: sendBsfRequestWithAuthorization(): username: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, v9, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v1, v7, v3}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;

    move-result-object v6

    if-nez v6, :cond_0

    .line 440
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v0

    new-instance v1, Lcom/sec/internal/ims/gba/GbaException;

    const-string v2, "GBA FAIL akaKeys null"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/ims/gba/GbaException;-><init>(Ljava/lang/String;I)V

    invoke-direct {v9, v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 444
    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 445
    const-string v0, "Host"

    move-object/from16 v1, p4

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GBA-service; 0.1; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_1

    const-string v3, "3gpp-gba-uicc"

    goto :goto_0

    :cond_1
    const-string v3, "3gpp-gba-tmpi"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "User-Agent"

    invoke-interface {v8, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseImei()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    const-string v0, "X-TMUS-IMEI"

    move-object/from16 v3, p5

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v3, p5

    .line 453
    :goto_1
    invoke-virtual {v6}, Lcom/sec/internal/ims/gba/params/GbaData;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 454
    const-string v4, "dc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "Authorization"

    if-eqz v4, :cond_5

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendBsfRequestWithAuthorization - AUTH_SQN_FAIL, akaPassword = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 458
    array-length v6, v0

    const/4 v11, 0x1

    if-le v6, v11, :cond_4

    .line 459
    aget-byte v6, v0, v11

    if-lez v6, :cond_3

    .line 467
    new-instance v4, Ljava/lang/String;

    const/4 v11, 0x2

    add-int/2addr v6, v11

    invoke-static {v0, v11, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET"

    const-string v15, "/"

    const-string v12, ""

    move-object/from16 v11, p2

    move-object/from16 v16, v4

    move-object/from16 v17, p3

    invoke-static/range {v11 .. v17}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object v15, v8

    move-object/from16 v8, p1

    .line 475
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getBsfRequestCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    move-object v11, v0

    move-object v8, v15

    goto :goto_2

    .line 469
    :cond_3
    const-string v0, "Invalid autsLength."

    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v0

    invoke-direct {v9, v0, v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    .line 461
    :cond_4
    const-string v0, "Invalid simResponse."

    invoke-static {v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getToken()I

    move-result v0

    invoke-direct {v9, v0, v4}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->gbaFailCallbacksDeQ(ILcom/sec/internal/ims/gba/GbaException;)V

    return-void

    :cond_5
    move-object v15, v8

    .line 477
    invoke-virtual {v6}, Lcom/sec/internal/ims/gba/params/GbaData;->getPassword()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v13

    const-string v14, "GET"

    const-string v0, "/"

    move-object/from16 v11, p2

    move-object v15, v0

    move-object/from16 v16, p3

    invoke-static/range {v11 .. v16}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    new-instance v11, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p9

    move-object/from16 v3, p3

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$3;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;[B[BLcom/sec/internal/ims/gba/params/GbaData;Z)V

    .line 536
    :goto_2
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-object/from16 p2, p0

    move-object/from16 p3, v0

    move-object/from16 p4, p1

    move-object/from16 p5, v8

    move-object/from16 p6, v11

    move-object/from16 p7, p9

    invoke-direct/range {p2 .. p7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 538
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isBsfDisableTls(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 539
    const-string v1, "GBA: Bsf disable Tls"

    invoke-static {v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 543
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",>,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x31000001

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 545
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method

.method private sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v7, p0

    .line 202
    sget-object v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string v1, "GBA: sendRequestWithAuthorization()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p3

    .line 204
    invoke-direct {v7, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getWwwAuthenticateHeader(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v2, p2

    goto/16 :goto_9

    .line 211
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 215
    array-length v2, v0

    const/4 v8, 0x0

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 216
    const-string/jumbo v5, "uicc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p6, :cond_2

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    if-nez p6, :cond_3

    :goto_1
    move-object v12, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_4
    const-string v4, ""

    goto :goto_1

    .line 227
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-direct {v7, v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    .line 228
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 229
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->nextNonce:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 230
    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    .line 233
    :cond_5
    iget-object v3, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 235
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 237
    :goto_3
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v18, "/"

    if-eqz v5, :cond_7

    move-object/from16 v15, v18

    goto :goto_4

    :cond_7
    move-object v15, v4

    .line 238
    :goto_4
    invoke-virtual {v1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v16

    aget-object v17, v2, v8

    move-object v9, v3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 236
    invoke-virtual/range {v9 .. v17}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v2

    sget-object v9, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    if-ne v2, v9, :cond_8

    .line 241
    new-instance v2, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/helper/httpclient/HttpPostBody;->getData()[B

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setBody(Ljava/lang/String;)V

    goto :goto_7

    .line 243
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 244
    sget-object v4, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v4, :cond_a

    .line 245
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :goto_5
    move-object/from16 v2, v18

    goto :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 246
    :goto_6
    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestURI(Ljava/lang/String;)V

    .line 250
    :cond_a
    :goto_7
    invoke-static {v3, v1}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Lcom/sec/internal/helper/httpclient/DigestAuth;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 253
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Host"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v2, "Authorization"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v10, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getAcceptEncoding(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-ne v1, v9, :cond_b

    .line 260
    const-string v1, "If-Match"

    iget-object v0, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-TMUS-IMEI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 265
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v1, "X-3GPP-Intended-Identity"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 268
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_d
    new-instance v11, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$2;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object v3, v10

    move-object v4, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 387
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    if-ne v1, v9, :cond_e

    .line 388
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 391
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 392
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v1

    if-lez v1, :cond_f

    .line 393
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/httpclient/DnsController;

    const/4 v2, 0x1

    .line 394
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/httpclient/DnsController;->setNaf(Z)V

    move-object/from16 v2, p2

    .line 395
    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_8

    :cond_f
    move-object/from16 v2, p2

    .line 397
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lokhttp3/Dns;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 400
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",>,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x31000001

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 402
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void

    .line 206
    :goto_9
    const-string/jumbo v1, "sendRequestWithAuthorization(): missing header: WWW-Authenticate"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getCallback()Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid WwwAuthenticateHeader"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;->onFail(Ljava/io/IOException;)V

    return-void
.end method

.method private storeLastAuthInfo(Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 4

    .line 714
    new-instance v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;-><init>()V

    .line 715
    new-instance v1, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v1}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 716
    iput-object p1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 717
    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result p2

    invoke-static {v1, p2}, Lcom/sec/internal/ims/gba/GbaUtility;->generateLastAuthInfoKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 718
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const-string v1, "ETag"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 721
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 722
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "storeLastAuthInfo : etagValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    iput-object p1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    .line 729
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/Map;

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private useGba(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Z
    .locals 2

    .line 605
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 606
    const-string p1, "User-Agent"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 608
    sget-object p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "useGba(): no headers"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 612
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useGba(): User-Agent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const-string p1, "3gpp-gba"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public clearLastAuthInfo(I)V
    .locals 4

    .line 95
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 96
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearLastAuthInfo: phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " - subId:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mLastAuthInfoMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 14

    .line 102
    iput-object p1, p0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mNafRequestParams:Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 103
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getLastAuthInfo(Ljava/lang/String;I)Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;

    move-result-object v0

    .line 106
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->isValidAuthInfo(Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    iget-object v4, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->lastNafResult:Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    iget-object v5, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->btid:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->gbaKey:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendRequestWithAuthorization(Ljava/net/URL;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getHeaders()Ljava/util/Map;

    move-result-object v11

    if-eqz v0, :cond_1

    .line 118
    iget-object v1, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    if-ne v1, v3, :cond_1

    .line 119
    const-string v1, "If-Match"

    iget-object v0, v0, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$LastAuthInfo;->etag:Ljava/lang/String;

    invoke-interface {v11, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethod()Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-result-object v9

    .line 122
    new-instance v12, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;

    invoke-direct {v12, p0, p1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController$1;-><init>(Lcom/sec/internal/ims/util/httpclient/GbaHttpController;Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/net/URL;)V

    .line 189
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUrl()Ljava/lang/String;

    move-result-object v10

    move-object v8, p0

    move-object v13, p1

    invoke-direct/range {v8 .. v13}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 192
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPostBody()Lcom/sec/internal/helper/httpclient/HttpPostBody;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 195
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",>,"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x31000001

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 197
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/net/MalformedURLException;->printStackTrace()V

    return-void
.end method

.method public sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V
    .locals 12

    move-object v9, p0

    move-object v1, p1

    .line 407
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v2

    move v3, p2

    invoke-direct {p0, v0, v2, p1, p2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->buildUrl(IZLjava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 409
    iget-object v0, v9, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    if-nez v0, :cond_0

    .line 410
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getGbaServiceModule()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iput-object v0, v9, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 412
    :cond_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 413
    const-string v0, "Host"

    invoke-interface {v11, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GBA-service; 0.1; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p8, :cond_1

    const-string v2, "3gpp-gba-uicc"

    goto :goto_0

    :cond_1
    const-string v2, "3gpp-gba-tmpi"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "User-Agent"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v0, "/"

    const-string v2, ""

    move-object v3, p3

    move-object/from16 v4, p5

    invoke-static {p3, v4, v0, v2, v2}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Authorization"

    invoke-interface {v11, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseImei()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 417
    const-string v0, "X-TMUS-IMEI"

    move-object/from16 v4, p4

    invoke-interface {v11, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v4, p4

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object v8, v10

    .line 420
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getBsfRequestCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    move-result-object v0

    .line 422
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    move-object p1, p0

    move-object p2, v1

    move-object p3, v10

    move-object/from16 p4, v11

    move-object/from16 p5, v0

    move-object/from16 p6, p9

    invoke-direct/range {p1 .. p6}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->makeHttpRequestParams(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;Ljava/lang/String;Ljava/util/Map;Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;Lcom/sec/internal/helper/httpclient/HttpRequestParams;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isBsfDisableTls(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 425
    sget-object v1, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendBsfRequest() Bsf disable Tls"

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 429
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",>,"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getMethodString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x31000001

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 431
    invoke-virtual {v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->loggingHttpMessage(Ljava/lang/String;I)V

    return-void
.end method
