.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# static fields
.field protected static final EDGE_PANI_FORMAT:Ljava/lang/String; = "%s%04x%04x"

.field protected static final IWLAN_COUNTRY_TAG:Ljava/lang/String; = "country="

.field protected static final IWLAN_NODE_ID_TAG:Ljava/lang/String; = "i-wlan-node-id="

.field protected static final IWLAN_TIMESTAMP_TAG:Ljava/lang/String; = "local-time-zone="

.field protected static final LTE_PANI_FORMAT:Ljava/lang/String; = "%s%04x%07x"

.field protected static final NR_PANI_FORMAT:Ljava/lang/String; = "%s%06x%09x"

.field protected static final PREF_WIFI_PANI_COUNTRY_CODE_KEY:Ljava/lang/String; = "wifiPaniCountryCode"

.field protected static final TEMPLATE_COUNTRY:Ljava/lang/String; = "<COUNTRY>"

.field protected static final TEMPLATE_NODE_ID:Ljava/lang/String; = "<NODE_ID>"

.field protected static final TEMPLATE_PREFIX:Ljava/lang/String; = "<PREFIX>"

.field protected static final TEMPLATE_TIMESTAMP:Ljava/lang/String; = "<TIMESTAMP>"

.field protected static final TEMPLATE_TYPED_PREFIX:Ljava/lang/String; = "<TYPED_PREFIX>"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;


# direct methods
.method public static synthetic $r8$lambda$gXYSoGauqtQY3lQIEo3icmf6O_M(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->lambda$generate$0(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocalMac()Ljava/lang/String;
    .locals 1

    .line 599
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz p0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getFactoryMacAddress()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private getPlmnFromCellInfo(I)Ljava/lang/String;
    .locals 3

    .line 316
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 317
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 319
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v0

    .line 320
    instance-of v1, v0, Landroid/telephony/CellIdentityLte;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/telephony/CellIdentityNr;

    if-eqz v1, :cond_0

    .line 321
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 322
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMccString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/CellIdentity;->getMncString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 323
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPsPlmn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_2
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getWifiBssid()Ljava/lang/String;
    .locals 3

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_0

    .line 613
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 615
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    .line 616
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiManager.getBSSID(): ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$generate$0(I)Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public generate(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 197
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public generate(ILjava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 204
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generate: network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fallbackPlmn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 207
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateWifiPani(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object v0

    .line 213
    invoke-virtual {p0, p3, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getPsPlmn(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;I)V

    .line 214
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    const-string v4, ""

    if-lt v2, v3, :cond_2

    const-string v2, "00000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "000000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 230
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate: change to NW PLMN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v1

    goto :goto_2

    .line 217
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generate: invalid network operator "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 221
    :cond_3
    const-string/jumbo p2, "persist.ril.ims.sipserverDebug"

    const-string v1, "false"

    invoke-static {p2, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "true"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 222
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p2

    if-nez p2, :cond_4

    move-object p2, v4

    goto :goto_1

    .line 223
    :cond_4
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object p2

    .line 224
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generate: use SIM operator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_7

    const/16 v2, 0x14

    if-eq p1, v2, :cond_6

    const/16 v3, 0x1e

    if-eq p1, v3, :cond_7

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 284
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "PaniGenerator: Not supported network."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 272
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateEhrpdPani()Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 235
    :pswitch_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object p1, p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string/jumbo v3, "ril.ltenetworktype"

    invoke-interface {p1, p3, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "TDD"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 236
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTdLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    move-object v4, p1

    goto :goto_4

    .line 238
    :cond_5
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 240
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 241
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object v0, v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result p1

    if-nez p1, :cond_9

    .line 244
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    .line 245
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    invoke-interface {p1, p3, v2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p3, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object p0

    move-object v4, p0

    goto :goto_5

    .line 252
    :cond_6
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateNrPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 268
    :cond_7
    :pswitch_2
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateUmtsPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    .line 280
    :cond_8
    :pswitch_3
    invoke-virtual {p0, p3, p2, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateGeranPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;

    move-result-object v4

    :cond_9
    :goto_5
    return-object v4

    :cond_a
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected generateCountryCode(I)Ljava/lang/String;
    .locals 5

    .line 574
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    .line 575
    const-string v0, ""

    if-eqz p0, :cond_2

    .line 576
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getGeolocation()Lcom/sec/internal/constants/ims/gls/LocationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 579
    iget-object v1, v1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 581
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "country="

    if-nez v2, :cond_1

    .line 582
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 583
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    .line 584
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->getLastAccessedNetworkCountryIso(I)Ljava/lang/String;

    move-result-object p0

    .line 585
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateCountryCode: last accessed network country iso: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 587
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 588
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 592
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 593
    const-string p0, "country=XX"

    return-object p0

    :cond_3
    return-object v0
.end method

.method protected generateEhrpdPani()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 452
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getCurrentUATI(Landroid/content/Context;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 455
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateEhrpdPaniHeaderString(SectorId+SubnetLen) len= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    array-length v2, p0

    const/16 v3, 0x11

    if-ne v2, v3, :cond_1

    const/16 v2, 0x10

    .line 460
    new-array v3, v2, [B

    .line 461
    aget-byte v4, p0, v1

    new-array v5, v0, [B

    aput-byte v4, v5, v1

    .line 467
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    invoke-static {v3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 470
    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3GPP2-1X-HRPD;ci-3gpp2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 474
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Got NULL UATI from RIL!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method protected generateGeranPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .locals 3

    .line 425
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 426
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateGeranPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    const-string p0, ""

    return-object p0

    .line 430
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "3GPP-GERAN;cgi-3gpp="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 431
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 430
    const-string p3, "%s%04x%04x"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateIwlanNodeId(I)Ljava/lang/String;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 551
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getLocalMac()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 553
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getWifiBssid()Ljava/lang/String;

    move-result-object p0

    .line 556
    :goto_0
    const-string p1, ""

    if-eqz p0, :cond_1

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i-wlan-node-id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method protected generateLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .locals 4

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateLtePani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 379
    const-string p0, ""

    return-object p0

    .line 382
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 383
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v1, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 382
    const-string p3, "%s%04x%07x"

    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    .line 398
    const-string v0, "3GPP-E-UTRAN-FDD;utran-cell-id-3gpp="

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-ne p3, v1, :cond_1

    .line 399
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 401
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateNrPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    .line 346
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Invalid tac or nrCid : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 351
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 352
    const-string v2, "%s%06x%09x"

    const-string v3, "3GPP-NR-TDD;utran-cell-id-3gpp="

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 360
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 359
    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 362
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const-string/jumbo v0, "ril.nrnetworktype"

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 363
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NR Access Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const-string p1, "TDD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 368
    :cond_2
    const-string p1, "FDD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 369
    const-string v3, "3GPP-NR-FDD;utran-cell-id-3gpp="

    goto :goto_0

    .line 368
    :cond_3
    const-string v3, "3GPP-NR;utran-cell-id-3gpp="

    .line 372
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 373
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 372
    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateTdLtePani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .locals 5

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateTdLtePani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    const-string p0, ""

    return-object p0

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3GPP-E-UTRAN-TDD;utran-cell-id-3gpp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 441
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v2, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 440
    const-string p3, "%s%04x%07x"

    invoke-static {v1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 442
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 443
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/Mno;->MOVISTAR_PERU:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_1

    .line 444
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p2
.end method

.method protected generateTimeStamp(I)Ljava/lang/String;
    .locals 1

    .line 565
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 566
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_0

    .line 567
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_0

    .line 569
    :cond_0
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    :goto_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 570
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "local-time-zone=\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateUmtsPani(ILjava/lang/String;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .locals 3

    .line 406
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 407
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%07x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 410
    const-string v1, "7fffffff"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->queryCellInfoForQualcomm()V

    .line 415
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 416
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p2, "generateUmtsPani: Invalid Cell Id : return empty."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 417
    const-string p0, ""

    return-object p0

    .line 420
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "3GPP-UTRAN-FDD;utran-cell-id-3gpp="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 421
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getAreaCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->getCellId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p2, v0, p3}, [Ljava/lang/Object;

    move-result-object p2

    .line 420
    const-string p3, "%s%04x%07x"

    invoke-static {p1, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected generateWifiPani(I)Ljava/lang/String;
    .locals 6

    .line 481
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getWifiPaniFormatFromSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    iget-boolean v1, v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    const-string v2, "<PREFIX>"

    if-eqz v1, :cond_0

    .line 492
    const-string v1, "<PREFIX><COUNTRY>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 496
    :cond_0
    const-string v1, "><"

    const-string v3, ">;<"

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateWiFiPani: Format for generating PANI - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 499
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 500
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateCountryCode(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 502
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/Mno;->LIFECELL_UA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v4, :cond_2

    .line 503
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v4, "wifiPaniCountryCode"

    const-string v5, "ims_user_data"

    if-nez v1, :cond_1

    .line 504
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;

    move-result-object v1

    const-string v3, ""

    invoke-static {p1, v1, v5, v4, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countryCode read from sharedPrefs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 513
    :cond_2
    :goto_0
    const-string v1, "IEEE-802.11"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<NODE_ID>"

    .line 514
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateIwlanNodeId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<COUNTRY>"

    .line 515
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<TIMESTAMP>"

    .line 516
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generateTimeStamp(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 517
    const-string v2, "<TYPED_PREFIX>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 518
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->this$0:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getWiFiStandard()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 523
    :cond_3
    :goto_1
    const-string p0, ";;"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 524
    const-string v1, ";"

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 527
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    .line 528
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    .line 529
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWiFiPani: normalized PANI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected getPsPlmn(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Ljava/lang/String;
    .locals 2

    .line 293
    invoke-virtual {p2}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isCdma()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 294
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->getPlmnFromCellInfo(I)Ljava/lang/String;

    move-result-object p0

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_1

    const-string p1, "00000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "000000"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataPlmn returns "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :catch_0
    move-exception p0

    .line 306
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "rePlmn by RIL is not guaranteed to be a numeric String. : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 300
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataPlmn from RIL returns invalid dataPlmn: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method

.method protected getWifiPaniFormatFromSetting(I)Ljava/lang/String;
    .locals 1

    .line 538
    const-string p0, "iwlan_pani_format"

    const-string v0, "<PREFIX><NODE_ID>"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 540
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    move-object v0, p0

    :cond_0
    return-object v0
.end method
