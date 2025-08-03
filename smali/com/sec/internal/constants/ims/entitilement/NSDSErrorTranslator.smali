.class public Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;
.super Ljava/lang/Object;
.source "NSDSErrorTranslator.java"


# static fields
.field private static final GET_MSISDN:I = 0x7

.field private static final GET_TOKEN:I = 0x8

.field private static final LOG_TAG:Ljava/lang/String; = "NSDSErrorTranslator"

.field private static final MANAGE_CONNECTIVITY:I = 0x4

.field private static final MANAGE_LOC_AND_TC:I = 0x5

.field private static final MANAGE_PUSH_TOKEN:I = 0x6

.field private static final MANAGE_SERVICE:I = 0x3

.field private static final REGISTERED_DEVICES:I = 0x9

.field private static final REGISTERED_MSISDN:I = 0x2

.field private static final REQ_3GPP_AUTH:I = 0x1

.field private static final SERVICE_ENTITLEMENT_STATUS:I = 0xa

.field private static mapNSDSMethodNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x1

    .line 34
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "3gppAuthentication"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "registeredMSISDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageService"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageConnectivity"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "manageLocationAndTC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "managePushToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getMSISDN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "getToken"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "registeredDevices"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static translate(Ljava/lang/String;II)I
    .locals 2

    const/16 v0, 0x3ee

    if-ne p2, v0, :cond_0

    return v0

    .line 50
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->mapNSDSMethodNames:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    .line 68
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not translate nsds error code unsupported method name:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 63
    :pswitch_0
    invoke-static {p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManagePushTokenErrorTranslator;->translate(I)I

    move-result p0

    return p0

    .line 61
    :pswitch_1
    invoke-static {p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageLocationAndTCErrorTranslator;->translate(I)I

    move-result p0

    return p0

    .line 57
    :pswitch_2
    invoke-static {p1, p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageConnectivityErrorTranslator;->translate(II)I

    move-result p0

    return p0

    .line 59
    :pswitch_3
    invoke-static {p1, p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$ManageServiceErrorTranslator;->translate(II)I

    move-result p0

    return p0

    .line 55
    :pswitch_4
    invoke-static {p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$RegisteredMsisdnErrorTranslator;->translate(I)I

    move-result p0

    return p0

    .line 53
    :pswitch_5
    invoke-static {p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$Request3gppAuthErrorTranslator;->translate(I)I

    move-result p0

    return p0

    .line 65
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator$RegisteredDevicesErrorTranslator;->translate(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
