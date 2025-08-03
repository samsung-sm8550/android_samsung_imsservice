.class public Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;
.super Ljava/lang/Object;
.source "PaniGenerator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PaniGenerator"

.field private static final PLANIINTIME_PREF:Ljava/lang/String; = "PLANIINTIME"

.field protected static final PLANI_PREF:Ljava/lang/String; = "PLANI"

.field static final SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_LINK_SPEED_11B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field isSoftPhone:Z

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

.field protected mLastPaniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field protected mPrevLastPaniList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$8vxGsl6CEIgmP4tMPkn_JQPc5QQ(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->convertToCharacter(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yiLHwy8UzYoqFkMezr7OCsaNUuQ(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->lambda$getWiFiStandard$0(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdnController(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetAllCellInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;I)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAllCellInfo(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misValidInfo(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidInfo(Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x1

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11B:Ljava/util/List;

    const/4 v0, 0x6

    .line 70
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IPdnController;)V
    .locals 4

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 90
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 91
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 93
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    .line 94
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const/16 v1, 0xc8

    invoke-direct {p1, p2, v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const/4 p1, 0x0

    .line 96
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 97
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string v1, "PLANI"

    const/4 v2, 0x0

    const-string v3, "imsconfig"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 98
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 100
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    return-void
.end method

.method private convertToCharacter(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 5

    .line 840
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p0

    .line 841
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWiFiStandard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 842
    const-string v2, ""

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object v2

    .line 856
    :pswitch_0
    const-string p0, "be"

    return-object p0

    .line 850
    :pswitch_1
    const-string p0, "ad"

    return-object p0

    .line 853
    :pswitch_2
    const-string p0, "ax"

    return-object p0

    .line 847
    :pswitch_3
    const-string p0, "ac"

    return-object p0

    .line 844
    :pswitch_4
    const-string p0, "n"

    return-object p0

    .line 859
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p0

    div-int/lit16 p0, p0, 0x3e8

    .line 860
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result p1

    .line 861
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "getWiFiStandard: freq %dghz, %dmbps"

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11B:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    const-string p0, "b"

    return-object p0

    .line 864
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->SUPPORTED_LINK_SPEED_11A_G:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x5

    if-ne p0, p1, :cond_2

    .line 865
    const-string p0, "a"

    goto :goto_0

    :cond_2
    const-string p0, "g"

    :goto_0
    return-object p0

    :cond_3
    return-object v2

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateEmergencyPani(Ljava/lang/String;III)Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    const/16 v1, 0x12

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p4, v1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceState(I)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 167
    new-instance p4, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {p4, v0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    invoke-virtual {p4}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkType()I

    move-result p4

    .line 168
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateEmergencyPani: from mobile network="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2

    .line 173
    iget-object p3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getRatInNoSimCase(ILandroid/content/Context;)I

    move-result p4

    .line 175
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    const/16 p3, 0x14

    if-ne p4, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p4, 0xd

    :goto_0
    invoke-virtual {p0, p4, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAllCellInfo(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 908
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getGenerator(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;
    .locals 0

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-eqz p1, :cond_0

    .line 150
    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorCmc;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    return-object p1

    .line 152
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    return-object p0
.end method

.method private getPrevioutPlani(I)Ljava/lang/String;
    .locals 0

    .line 877
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 879
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private getStoredLastPani(I)Ljava/lang/String;
    .locals 0

    .line 885
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 887
    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private isValidInfo(Lcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .locals 3

    .line 912
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid cellidentity : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private static synthetic lambda$getWiFiStandard$0(Landroid/net/TransportInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0

    .line 835
    check-cast p0, Landroid/net/wifi/WifiInfo;

    return-object p0
.end method

.method private setPrevioutPlani(ILjava/lang/String;)V
    .locals 0

    .line 893
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPrevLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 895
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "setPrevioutPlani: IndexOutOfBoundsException"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private storeLastPani(ILjava/lang/String;)V
    .locals 0

    .line 901
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mLastPaniList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "storeLastPani: IndexOutOfBoundsException"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 920
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Dump of PaniGenerator:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public generate(ILjava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 7

    .line 117
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 119
    sget-object v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generate: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pdn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v3, 0xf

    if-ne p1, v3, :cond_0

    .line 121
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isSoftPhone:Z

    if-nez v3, :cond_0

    .line 122
    invoke-direct {p0, p2, p3, v0, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->generateEmergencyPani(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    .line 126
    sget v5, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_WIFI_P2P:I

    if-ne p1, v5, :cond_1

    goto :goto_0

    :cond_1
    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v4

    .line 127
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v5, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isWifiConnected()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 128
    invoke-interface {v5, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    const/16 v4, 0x12

    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    if-ne v1, v4, :cond_7

    .line 131
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 132
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v1

    if-nez v1, :cond_7

    .line 134
    iget-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v1

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generate: mobileDataNetworkType="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    move v1, v4

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    .line 141
    const-string p0, "network is unknown."

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 145
    :cond_8
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getGenerator(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    move-result-object p0

    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCid(I)J
    .locals 3

    .line 104
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getAllCellInfo(I)Ljava/util/List;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    .line 106
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getCid: getAllCellInfo null"

    invoke-static {p0, p1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v0

    .line 110
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;-><init>()V

    .line 111
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda0;-><init>()V

    .line 112
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 113
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getLastPani(ILcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)Ljava/lang/String;
    .locals 4

    .line 756
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string v1, "PLANI"

    const/4 v2, 0x0

    const-string v3, "imsconfig"

    invoke-static {p1, v0, v3, v1, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 761
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 764
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object v0

    .line 765
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    .line 772
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 773
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_2

    .line 774
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    .line 775
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 776
    invoke-interface {p0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result p0

    if-nez p0, :cond_2

    .line 777
    const-string p0, ";\"\\d{4}-\\d{2}-\\d{2}T\\d{2}:\\d{2}:\\d{2}.*$"

    const-string v1, ""

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :cond_2
    if-eqz v1, :cond_5

    .line 785
    sget-object p0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_3

    .line 786
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_0

    .line 787
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p2, p0, :cond_4

    .line 788
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    goto :goto_0

    .line 787
    :cond_4
    const-string/jumbo p0, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 790
    :goto_0
    new-instance p2, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p2, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 794
    :cond_5
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getLastPani: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getTimeInPlani(I)J
    .locals 6

    .line 653
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string v3, "PLANIINTIME"

    const-wide/16 v4, 0x0

    const-string/jumbo v2, "user_config"

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getLong(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 654
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeInPlani: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v0
.end method

.method getWiFiStandard()Ljava/lang/String;
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 833
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda1;-><init>(Landroid/net/ConnectivityManager;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda2;-><init>()V

    .line 834
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda3;-><init>()V

    .line 835
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;)V

    .line 836
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isChangedPlani(ILjava/lang/String;)Z
    .locals 4

    .line 631
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChangedPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", curr plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 633
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 636
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method protected isValidPani(Ljava/lang/String;I)Z
    .locals 6

    .line 799
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 808
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 809
    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType(I)I

    move-result v2

    .line 810
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v3

    .line 811
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result p0

    .line 813
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPani: PANI ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] network ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] voiceSvcState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] dataSvcState ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 816
    const-string p2, "IEEE-802.11"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    const/16 p1, 0x12

    const/4 p2, 0x1

    if-ne v2, p1, :cond_1

    if-nez v3, :cond_2

    :goto_0
    move v1, p2

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    if-eqz v3, :cond_4

    return v1

    .line 827
    :cond_4
    const-string p0, "i-wlan-node-id="

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public needCellInfoAge(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 659
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cellular-Network-Info_With_CIA"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needCellInfoAgeInactive(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cellular-Network-Info_With_CIA_Inactive"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 667
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Cellular-Network-Info_With_CIA"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 668
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected queryCellInfoForQualcomm()V
    .locals 2

    .line 672
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "queryCellInfoForQualcomm"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    .line 676
    const-string p0, "cellInfo is null."

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removePreviousPlani(I)V
    .locals 4

    .line 642
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getPrevioutPlani(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    sget-object v1, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removePreviousPlani: prev plani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 644
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->setPrevioutPlani(ILjava/lang/String;)V

    return-void
.end method

.method public setLkcForLastPani(ILjava/lang/String;Lcom/sec/ims/settings/ImsProfile;Ljava/util/Date;)V
    .locals 2

    .line 699
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setLkcForLastPani: No Last PANI header for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 705
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 706
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLkcForLastPani: current PANI is not valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 711
    :cond_1
    const-string v0, "IEEE-802.11"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 712
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p2

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mGenerator:Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator$PaniGeneratorBase;->generate(II)Ljava/lang/String;

    move-result-object p2

    .line 717
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->isValidPani(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 718
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "setLkcForLastPani: underlyingCellularPani is not valid!"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 721
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 724
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object p2

    .line 726
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->needTimeStampForLastPani(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 728
    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    .line 729
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_4

    .line 730
    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ss.SSSXXX"

    goto :goto_1

    .line 731
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->CELLC_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_5

    .line 732
    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ssZZZZZ"

    goto :goto_1

    .line 731
    :cond_5
    const-string/jumbo p3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .line 734
    :goto_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 735
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";\""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->storeLastPani(ILjava/lang/String;)V

    .line 739
    :cond_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->getStoredLastPani(I)Ljava/lang/String;

    move-result-object p2

    .line 740
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string p3, "imsconfig"

    const-string p4, "PLANI"

    invoke-static {p1, p0, p3, p4, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "setLkcForLastPani: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setTimeInPlani(IJ)V
    .locals 6

    .line 648
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user_config"

    const-string v3, "PLANIINTIME"

    move v0, p1

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    .line 649
    sget-object p0, Lcom/sec/internal/ims/core/handler/secims/PaniGenerator;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTimeInPlani: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
