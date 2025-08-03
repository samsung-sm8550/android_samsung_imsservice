.class public Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;
.super Landroid/content/ContentProvider;
.source "RcsPreferencesProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.ims.android.rcs"

.field private static final KEY_ENRICHED_CALLING:Ljava/lang/String; = "rcs_enriched_calling"

.field private static final KEY_MASTER_SWICH_VISIBILITY:Ljava/lang/String; = "master_switch"

.field private static final KEY_PERMANENT_DISABLE:Ljava/lang/String; = "permanent_disable_state"

.field private static final KEY_PERMANENT_DISABLE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field private static final KEY_RCSPROFILE:Ljava/lang/String; = "rcsprofile"

.field private static final KEY_RCS_ENABLED:Ljava/lang/String; = "rcs_enabled"

.field private static final KEY_RCS_NOTIFICATION_SETTING:Ljava/lang/String; = "rcs_connection_preference"

.field private static final KEY_REGISTRATION_STATUS:Ljava/lang/String; = "registration_status"

.field private static final KEY_STATIC_ENABLE_RCS:Ljava/lang/String; = "EnableRCS"

.field private static final KEY_STATIC_ENABLE_RCSCHAT:Ljava/lang/String; = "EnableRCSchat"

.field private static final KEY_SUPPORT_DUAL_RCS:Ljava/lang/String; = "support_dual_rcs"

.field private static final KEY_SUPPORT_DUAL_RCS_SETTINGS:Ljava/lang/String; = "support_dual_rcs_settings"

.field private static final KEY_SUPPORT_DUAL_RCS_SIM1:Ljava/lang/String; = "support_dual_rcs_sim1"

.field private static final KEY_SUPPORT_DUAL_RCS_SIM2:Ljava/lang/String; = "support_dual_rcs_sim2"

.field private static final KEY_USER_ALIAS:Ljava/lang/String; = "user_alias"

.field private static final KEY_VANILLA_APPLIED:Ljava/lang/String; = "vanilla_applied"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MATCH_ENRICHED_CALLING:I = 0xb

.field private static final MATCH_HOME_NETWORK:I = 0x2

.field private static final MATCH_PERMANENT_DISABLE:I = 0x4

.field private static final MATCH_PERMANENT_DISABLE_AVAILABILITY:I = 0x6

.field private static final MATCH_RCSPROFILE:I = 0x8

.field private static final MATCH_RCS_ENABLED_STATIC:I = 0xa

.field private static final MATCH_REGISTRATION:I = 0x7

.field private static final MATCH_ROAMING:I = 0x3

.field private static final MATCH_SETTINGS:I = 0x1

.field private static final MATCH_SUPPORT_DUAL_RCS:I = 0x9

.field private static final MATCH_SUPPORT_DUAL_RCS_SETTINGS:I = 0xc

.field private static final MATCH_USER_ALIAS:I = 0x5

.field private static final TABLE_ENRICHED_CALLING:Ljava/lang/String; = "rcs_enriched_calling"

.field private static final TABLE_HOME_NETWORK:Ljava/lang/String; = "home_network"

.field private static final TABLE_PERMANENT_DISALBE:Ljava/lang/String; = "permanent_disable_state"

.field private static final TABLE_PERMANENT_DISALBE_AVAILABILITY:Ljava/lang/String; = "permanent_disable_availibility"

.field private static final TABLE_PREFERENCES:Ljava/lang/String; = "preferences"

.field private static final TABLE_RCSPROFILE:Ljava/lang/String; = "rcsprofile"

.field private static final TABLE_RCS_ENABLED_STATIC:Ljava/lang/String; = "rcs_enabled_static"

.field private static final TABLE_REGISTRATION:Ljava/lang/String; = "registration"

.field private static final TABLE_ROAMING:Ljava/lang/String; = "roaming"

.field private static final TABLE_SUPPORT_DUAL_RCS:Ljava/lang/String; = "support_dual_rcs"

.field private static final TABLE_SUPPORT_DUAL_RCS_SETTINGS:Ljava/lang/String; = "support_dual_rcs_settings"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 34
    const-class v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    const-string/jumbo v2, "preferences"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    .line 90
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 91
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    const-string v5, "com.sec.ims.android.rcs"

    invoke-virtual {v0, v5, v1, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 99
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    const-string v1, "home_network"

    const/4 v2, 0x2

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    const-string/jumbo v1, "roaming"

    const/4 v2, 0x3

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    const-string/jumbo v1, "permanent_disable_state"

    const/4 v2, 0x4

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    const-string/jumbo v1, "permanent_disable_availibility"

    const/4 v2, 0x6

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    const-string/jumbo v1, "registration"

    const/4 v2, 0x7

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    const-string/jumbo v1, "rcsprofile"

    const/16 v2, 0x8

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 109
    const-string/jumbo v1, "support_dual_rcs"

    const/16 v2, 0x9

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    const-string/jumbo v1, "rcs_enabled_static"

    const/16 v2, 0xa

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    const-string/jumbo v1, "rcs_enriched_calling"

    const/16 v2, 0xb

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    const-string/jumbo v1, "support_dual_rcs_settings"

    const/16 v2, 0xc

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 1

    .line 297
    new-instance p0, Landroid/database/MatrixCursor;

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 298
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private createMultiValueCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 303
    new-instance p0, Landroid/database/MatrixCursor;

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 304
    invoke-virtual {p0, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;
    .locals 1

    .line 277
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 280
    filled-new-array {p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 287
    new-instance p0, Landroid/database/MatrixCursor;

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 290
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method private getRcsEnabledStatic(I)[Ljava/lang/String;
    .locals 8

    .line 364
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v0

    const-string v1, ", rcschat = "

    const-string/jumbo v2, "true"

    const-string v3, "false"

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v4, 0x1

    :cond_0
    move p0, v4

    goto :goto_0

    .line 367
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileList(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 369
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 370
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/settings/ImsProfile;

    if-eqz p1, :cond_2

    .line 371
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v4

    .line 373
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result p0

    .line 380
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsEnabledStatic: SimMobility, rcs = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    move-object p1, v2

    goto :goto_1

    :cond_3
    move-object p1, v3

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 384
    :goto_2
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/Mno;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    .line 392
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 393
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 395
    :cond_6
    sget-object v5, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRcsEnabledStatic: operator = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 398
    const-string p0, "getRcsEnabledStatic: operator is empty, rcs = false, rcschat = false"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :cond_7
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 405
    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 406
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v4

    :goto_3
    move p0, v4

    goto :goto_4

    .line 409
    :cond_8
    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 410
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 414
    const-string p1, "EnableRCS"

    invoke-static {p0, p1, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p1

    .line 415
    const-string v0, "EnableRCSchat"

    invoke-static {p0, v0, v4}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    .line 416
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRcsEnabledStatic: Customer, rcs = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v4

    move v4, p1

    goto :goto_4

    .line 418
    :cond_9
    const-string p0, "getRcsEnabledStatic: cscSettings is null, rcs = false, rcschat = false"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_4
    if-eqz v4, :cond_a

    move-object p1, v2

    goto :goto_5

    :cond_a
    move-object p1, v3

    :goto_5
    if-eqz p0, :cond_b

    goto :goto_6

    :cond_b
    move-object v2, v3

    .line 423
    :goto_6
    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSupportDualRcs()[Ljava/lang/Integer;
    .locals 4

    .line 346
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    const-string v1, "dual_rcs_policy"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    .line 347
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    .line 349
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result p0

    .line 353
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 354
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getSupportDualRcsSettings()I
    .locals 0

    .line 432
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result p0

    return p0
.end method

.method private isRcsRegistered(I)Z
    .locals 0

    .line 338
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isRcsRegistered(I)Z

    move-result p0

    return p0
.end method

.method private queryEnrichedCalling(I)I
    .locals 0

    .line 428
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledEnrichedCalling(I)Z

    move-result p0

    return p0
.end method

.method private queryUserAlias(I)Ljava/lang/String;
    .locals 0

    .line 322
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 324
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getUserAliasFromPreference(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 326
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private readCurrentSettingsValues(I)[Ljava/lang/Integer;
    .locals 2

    .line 259
    const-string/jumbo v0, "rcs_user_setting"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result v0

    .line 260
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->isRcsEnabledByPhoneId(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 264
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isMainSwitchVisible(Landroid/content/Context;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 266
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    .line 270
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 271
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 272
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private updateRCSSetting(ZI)V
    .locals 0

    .line 342
    invoke-static {p1, p2}, Lcom/sec/internal/ims/registry/ImsRegistry;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method private updateUserAlias(ILjava/lang/String;)V
    .locals 1

    .line 309
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->setUserAlias(ILjava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getPresenceModule()Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 316
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getRealtimeUserAliasAuth()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 317
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;->setDisplayText(ILjava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 137
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 145
    sget-object p2, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    .line 146
    sget-object p3, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "query ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, "] match ["

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "]"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p4

    const/4 p5, 0x0

    .line 176
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz p4, :cond_0

    .line 150
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result p5

    .line 153
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p4

    const-string/jumbo v1, "simslot"

    invoke-virtual {p4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 154
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object p4

    const/4 p5, 0x7

    invoke-virtual {p4, p5}, Ljava/lang/String;->charAt(I)C

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->getNumericValue(C)I

    move-result p5

    :cond_1
    const/4 p4, 0x1

    .line 158
    const-string/jumbo v1, "rcs_connection_preference"

    packed-switch p2, :pswitch_data_0

    .line 209
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "query: uri not implemented: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_0

    .line 206
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getSupportDualRcsSettings()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "support_dual_rcs_settings"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_0

    .line 203
    :pswitch_1
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->queryEnrichedCalling(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "rcs_enriched_calling"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto/16 :goto_0

    .line 197
    :pswitch_2
    const-string p1, "EnableRCS"

    const-string p2, "EnableRCSchat"

    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getRcsEnabledStatic(I)[Ljava/lang/String;

    move-result-object p2

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 190
    :pswitch_3
    const-string/jumbo p1, "support_dual_rcs_sim1"

    const-string/jumbo p2, "support_dual_rcs_sim2"

    const-string/jumbo p3, "support_dual_rcs"

    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 194
    invoke-direct {p0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->getSupportDualRcs()[Ljava/lang/Integer;

    move-result-object p2

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 186
    :pswitch_4
    invoke-static {p5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p1

    .line 187
    const-string/jumbo p2, "rcsprofile"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 182
    :pswitch_5
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->isRcsRegistered(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "registration_status"

    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 176
    :pswitch_6
    const-string/jumbo p1, "permanent_disable_availibility"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 179
    :pswitch_7
    const-string/jumbo p1, "user_alias"

    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->queryUserAlias(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 173
    :pswitch_8
    const-string/jumbo p1, "permanent_disable_state"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 170
    :pswitch_9
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 167
    :pswitch_a
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createSingleValueCursor(Ljava/lang/String;Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 160
    :pswitch_b
    const-string/jumbo p1, "vanilla_applied"

    const-string p2, "master_switch"

    const-string/jumbo p3, "rcs_enabled"

    filled-new-array {p3, p1, p2}, [Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->readCurrentSettingsValues(I)[Ljava/lang/Integer;

    move-result-object p2

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->createMultiValueCursor([Ljava/lang/String;[Ljava/lang/Integer;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    .line 217
    sget-object p3, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "update: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    if-nez p2, :cond_0

    .line 222
    const-string/jumbo p0, "update: values are null"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 226
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneIdFromTelephony()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, p4

    .line 230
    :goto_0
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v0

    .line 234
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    .line 252
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "update: uri not implemented: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 243
    :cond_3
    const-string/jumbo v1, "user_alias"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 244
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 245
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User alias: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->updateUserAlias(ILjava/lang/String;)V

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :goto_1
    move p4, v2

    goto :goto_2

    .line 236
    :cond_4
    const-string/jumbo p1, "rcs_enabled"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 237
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    move p4, v2

    .line 238
    :cond_5
    invoke-direct {p0, p4, v0}, Lcom/sec/internal/ims/rcscore/RcsPreferencesProvider;->updateRCSSetting(ZI)V

    goto :goto_1

    :cond_6
    :goto_2
    return p4
.end method
