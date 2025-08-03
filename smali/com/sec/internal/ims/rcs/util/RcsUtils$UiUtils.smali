.class public Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# static fields
.field public static final RCS_PREF_ALWAYS_ASK:I = 0x2

.field public static final RCS_PREF_ALWAYS_CONNECT:I = 0x1

.field public static final RCS_PREF_NEVER:I = 0x0

.field private static mHasRcsUserConsent:Z = false

.field private static mRcsPdnDialog:Landroid/app/AlertDialog;


# direct methods
.method public static synthetic $r8$lambda$iLiQmHL9YlvsTaUMVQvP7DX-H2E(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->lambda$isRcsEnabledEnrichedCalling$1(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qtkY4vcMi-R53JRpKInRtHi4g94(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->lambda$isRcsEnabledEnrichedCalling$0(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfputmHasRcsUserConsent(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smsetRcsPrefValue(Landroid/content/Context;IZI)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->setRcsPrefValue(Landroid/content/Context;IZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 363
    new-instance v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;

    invoke-direct {v0, p2, p1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$1;-><init>(IZLandroid/content/Context;)V

    return-object v0
.end method

.method public static getRcsUserConsent(Landroid/content/Context;Lcom/sec/internal/helper/os/ITelephonyManager;I)Z
    .locals 5

    .line 329
    const-string/jumbo v0, "rcs_roaming_pref"

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 331
    const-string/jumbo v2, "rcs_home_pref"

    invoke-static {p0, p2, v2, v1}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v2

    .line 333
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 335
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRcsUserConsent: rcsConnectPref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-boolean v2, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 339
    sput-boolean v3, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mHasRcsUserConsent:Z

    return v1

    :cond_1
    if-nez v0, :cond_3

    .line 344
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    invoke-static {p0, p2, p1, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->setRcsPrefValue(Landroid/content/Context;IZI)V

    return v1

    :cond_2
    return v3

    :cond_3
    const/4 p2, 0x2

    if-ne v0, p2, :cond_5

    .line 351
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {p2, p0, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p2

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq p2, v0, :cond_4

    .line 352
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->showPdnConfirmation(Landroid/content/Context;Z)V

    :cond_4
    return v3

    :cond_5
    return v1
.end method

.method public static isMainSwitchVisible(Landroid/content/Context;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 241
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    const-string/jumbo v0, "rcs_show_main_switch"

    .line 246
    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 247
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result p0

    .line 248
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMainSwitchVisible: mIsVisible= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", rcsEnabled= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public static isRcsEnabledEnrichedCalling(I)Z
    .locals 3

    .line 309
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$$ExternalSyntheticLambda0;-><init>(I)V

    .line 315
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils$$ExternalSyntheticLambda1;-><init>()V

    .line 316
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 317
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 318
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEnrichedCalling = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isRcsEnabledInImsSwitch(Landroid/content/Context;I)Z
    .locals 3

    .line 259
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 263
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 268
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "enableServiceRcs"

    .line 269
    invoke-static {v2, v0, v1}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isDownloadableSamsungMsgInUseForUsOpen(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static isRcsEnabledinSettings(Landroid/content/Context;I)Z
    .locals 0

    .line 254
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledInImsSwitch(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method public static isSameRcsOperator(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 7

    .line 276
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    .line 277
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 281
    const-string v3, ""

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_1

    .line 285
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v3

    move-object v4, p1

    .line 289
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_2

    .line 290
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 293
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSameOperatorByProfile: rcsConfigMark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", otherSlotRcsConfigMark = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mnoName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", otherSlotMnoName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 296
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 300
    :cond_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$isRcsEnabledEnrichedCalling$0(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 315
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isRcsEnabledEnrichedCalling$1(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 1

    .line 316
    const-string v0, "ec"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static setRcsPrefValue(Landroid/content/Context;IZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 383
    const-string/jumbo p2, "rcs_roaming_pref"

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    goto :goto_0

    .line 386
    :cond_0
    const-string/jumbo p2, "rcs_home_pref"

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private static showPdnConfirmation(Landroid/content/Context;Z)V
    .locals 3

    .line 392
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isChinaOmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isJPNOmcCode()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMO"

    .line 393
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "VZW"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ATT"

    .line 394
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "APP"

    .line 394
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "BMC"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 398
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 402
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 405
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_2

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 408
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 406
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 412
    invoke-static {p0, p1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 410
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 417
    invoke-static {p0, p1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 422
    invoke-static {p0, p1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->createRcsPdnPrefClickListener(Landroid/content/Context;ZI)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    .line 420
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    sput-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    .line 426
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7f6

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    .line 427
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p1, 0x10100

    invoke-virtual {p0, p1}, Landroid/view/Window;->addFlags(I)V

    .line 429
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 430
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 431
    sget-object p0, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->mRcsPdnDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method
