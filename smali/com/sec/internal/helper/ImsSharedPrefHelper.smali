.class public Lcom/sec/internal/helper/ImsSharedPrefHelper;
.super Ljava/lang/Object;
.source "ImsSharedPrefHelper.java"


# static fields
.field public static final CARRIER_ID:Ljava/lang/String; = "carrierId"

.field public static final CSC_INFO_PREF:Ljava/lang/String; = "CSC_INFO_PREF"

.field public static final DEBUG_CONFIG:Ljava/lang/String; = "Debug_config"

.field public static final DRPT:Ljava/lang/String; = "DRPT"

.field public static final GLOBAL_GC_SETTINGS:Ljava/lang/String; = "globalgcsettings"

.field public static final GLOBAL_SETTINGS:Ljava/lang/String; = "globalsettings"

.field public static final IMS_CONFIG:Ljava/lang/String; = "imsconfig"

.field public static final IMS_FEATURE:Ljava/lang/String; = "imsfeature"

.field public static final IMS_PROFILE:Ljava/lang/String; = "imsprofile"

.field public static final IMS_SWITCH:Ljava/lang/String; = "imsswitch"

.field public static final IMS_UPDATE:Ljava/lang/String; = "imsUpdate"

.field public static final IMS_USER_DATA:Ljava/lang/String; = "ims_user_data"

.field public static final LAST_ACCESSED_COUNTRY_ISO:Ljava/lang/String; = "last_accessed_country_iso"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsSharedPrefHelper"

.field public static final PREF:Ljava/lang/String; = "pref"

.field public static final PRE_COMMON_HEADER:Ljava/lang/String; = "previous_common_header"

.field public static final PROFILE:Ljava/lang/String; = "profile"

.field public static final SAVED_IDC_PROCESS_MODE:Ljava/lang/String; = "saved_idc_appdata_process_mode"

.field public static final SAVED_IMPU:Ljava/lang/String; = "saved_impu"

.field public static final USER_CONFIG:Ljava/lang/String; = "user_config"

.field public static final VALID_RCS_CONFIG:Ljava/lang/String; = "validrcsconfig"

.field private static final migrationListForCe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final saveWithPhoneIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$38jbQCrZg9vzvvhudNVR33C21Hc(Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$3(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3DtEdxi1bojJ2PLcjkV2E856MEA(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$put$16(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8p2oy7TdrCIueWqU36WMmNj4GVc(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getString$6(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8wpm0lUopVBzSytLltxW9iq5vgg(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getInt$10(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JXEDM4YlLBS_smrrSOAB87af-3E(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getString$7(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JrisovVsxBIZdJQi4ytSlkum2MI(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getInt$11(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O_dvb56J7w8zIem-O_1WvMtXqLs(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U7ocxEUHiGPzl51EyUXP7U2G4Q0(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$5(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzGlllQFE22ObqM8FAJcp79Ry6Q(Ljava/lang/String;ZLandroid/content/SharedPreferences;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getBoolean$9(Ljava/lang/String;ZLandroid/content/SharedPreferences;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hasO_TRYvO04GDpRdD6-ulmeO5w(Ljava/lang/String;JLandroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$4(Ljava/lang/String;JLandroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZTqC5U0zYH0-g5mRmRtpRcOjlE(Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$2(Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$k3l0gKIqxYnvW3HubUvwPrfCHxQ(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$remove$13(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$njycAqntfwB4-dOjyKOEfgkPXl8([Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getStringArray$15([Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tCo9HjbCklrI3c7Asr8gBrMTcoo(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$clear$14(Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static synthetic $r8$lambda$umE8LvRfDuJSNaK9qVAnZ3lGuQI(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getStringSet$8(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vek9x0lX8FoIscGExCdNuGMh59c(Ljava/lang/String;JLandroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$getLong$12(Ljava/lang/String;JLandroid/content/SharedPreferences;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yqBCRg8o16QETC5QKkOWI-b_Zwo(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->lambda$save$1(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .line 43
    const-string/jumbo v0, "pref"

    const-string/jumbo v1, "saved_impu"

    const-string v2, "ims_user_data"

    const-string/jumbo v3, "profile"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrationListForCe:Ljava/util/List;

    .line 50
    const-string v6, "imsprofile"

    const-string v7, "imsswitch"

    const-string/jumbo v1, "user_config"

    const-string v2, "ims_user_data"

    const-string v3, "CSC_INFO_PREF"

    const-string v4, "globalsettings"

    const-string v5, "imsfeature"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->saveWithPhoneIdList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 153
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda15;

    invoke-direct {p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 0

    .line 132
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static getInt(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 141
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, -0x1

    .line 137
    invoke-static {v0, p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda9;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getLong(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 0

    .line 145
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda12;

    invoke-direct {p1, p3, p4, p5}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;
    .locals 3

    if-eqz p1, :cond_5

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "_"

    if-nez p4, :cond_1

    invoke-static {p1}, Lcom/sec/internal/helper/os/DeviceUtil;->isUserUnlocked(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_1
    sget-object p4, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrationListForCe:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 66
    sget-object p4, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSharedPref from CE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    if-gez p0, :cond_2

    .line 69
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 71
    :cond_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_3
    if-gez p0, :cond_4

    .line 76
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    .line 78
    :cond_4
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 83
    invoke-static {p0, p1, p2, v0, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 114
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    const-string v1, "-?\\d+"

    invoke-virtual {p4, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .line 118
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda2;

    invoke-direct {p2, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 119
    sget-object p1, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getString: ClassCastException but okay with getInt() for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    return-object p4
.end method

.method public static getStringArray(ILandroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p3

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 158
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda7;

    invoke-direct {p1, p3, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda7;-><init>([Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static getStringSet(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda16;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda16;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private static synthetic lambda$clear$14(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 153
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$getBoolean$9(Ljava/lang/String;ZLandroid/content/SharedPreferences;)Ljava/lang/Boolean;
    .locals 0

    .line 132
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getInt$10(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 0

    .line 137
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getInt$11(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 0

    .line 141
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getLong$12(Ljava/lang/String;JLandroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 0

    .line 145
    invoke-interface {p3, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getString$6(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 0

    .line 114
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getString$7(Ljava/lang/String;ILandroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 0

    .line 118
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getStringArray$15([Ljava/lang/String;Ljava/util/Map;Landroid/content/SharedPreferences;)V
    .locals 4

    .line 159
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 160
    const-string v3, ""

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$getStringSet$8(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)Ljava/util/Set;
    .locals 0

    .line 128
    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$put$16(Landroid/content/ContentValues;Landroid/content/SharedPreferences;)V
    .locals 3

    .line 168
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 169
    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 170
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 171
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$remove$13(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$save$0(Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 87
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$save$1(Ljava/lang/String;ZLandroid/content/SharedPreferences;)V
    .locals 0

    .line 91
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$save$2(Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    .line 96
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$save$3(Ljava/lang/String;ILandroid/content/SharedPreferences;)V
    .locals 0

    .line 100
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$save$4(Ljava/lang/String;JLandroid/content/SharedPreferences;)V
    .locals 0

    .line 104
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    invoke-interface {p3, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$save$5(Ljava/lang/String;Ljava/util/Set;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 108
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static migrateToCeStorage(Landroid/content/Context;)V
    .locals 9

    .line 178
    sget-object v0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "migrate shared preferences to CE storage"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 181
    const-string p0, "context is null "

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 185
    :cond_0
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 186
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 188
    sget-object v2, Lcom/sec/internal/helper/ImsSharedPrefHelper;->migrationListForCe:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    sget-object v4, Lcom/sec/internal/helper/ImsSharedPrefHelper;->saveWithPhoneIdList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "Failed delete shared preferences on DE."

    const-string v6, "Failed to move shared preferences."

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 191
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, p0, v7}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 192
    sget-object p0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 195
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 196
    sget-object p0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    :cond_4
    invoke-virtual {v1, p0, v3}, Landroid/content/Context;->moveSharedPreferencesFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 202
    sget-object p0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 205
    :cond_5
    invoke-virtual {p0, v3}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    sget-object p0, Lcom/sec/internal/helper/ImsSharedPrefHelper;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static put(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 167
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda3;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static remove(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;

    invoke-direct {p1, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda6;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 100
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda0;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda10;

    invoke-direct {p1, p3, p4, p5}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;J)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda14;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda14;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda4;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 91
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda8;

    invoke-direct {p1, p3, p4}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    .line 96
    invoke-static {v0, p0, p1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSpAsOptional(ILandroid/content/Context;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda13;

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/helper/ImsSharedPrefHelper$$ExternalSyntheticLambda13;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
