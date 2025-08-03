.class public Lcom/sec/internal/ims/config/ConfigTrigger;
.super Ljava/lang/Object;
.source "ConfigTrigger.java"


# static fields
.field private static final EXTRA_IS_IIDTOKEN:Ljava/lang/String; = "is_iid_token_needed"

.field private static final EXTRA_IS_RCS_REGI:Ljava/lang/String; = "is_rcs_registered"

.field private static final EXTRA_PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final INTENT_ACTION_RCS_AUTOCONFIG_START:Ljava/lang/String; = "com.android.ims.RCS_AUTOCONFIG_START"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigTrigger"

.field private static final MESSAGE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"


# instance fields
.field private mAcsTryReason:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field private final mContext:Landroid/content/Context;

.field private mDualSimRcsAutoConfig:Z

.field private final mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mNeedResetConfig:Z

.field private mReadyStartCmdList:Landroid/util/SparseBooleanArray;

.field private mReadyStartForceCmd:[Z

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mTokenDeletedReason:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$01M-3eaO9YYYO3Ie70ClS3xnE2I(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->lambda$getTokenDeletedReason$0(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    .line 91
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    .line 92
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    .line 96
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 98
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 99
    iput-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 100
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    if-gtz p1, :cond_0

    .line 102
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "an amount of SIM slots ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not valid"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_0
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    :goto_0
    return-void
.end method

.method private static synthetic lambda$getTokenDeletedReason$0(Ljava/lang/Integer;)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 0

    .line 479
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-object p0
.end method


# virtual methods
.method protected getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-nez v0, :cond_0

    .line 439
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 440
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected getDualSimRcsAutoConfig()Z
    .locals 0

    .line 490
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    return p0
.end method

.method protected getNeedResetConfig()Z
    .locals 0

    .line 520
    iget-boolean p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    return p0
.end method

.method protected getReadyStartCmdList(I)Z
    .locals 0

    .line 499
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method protected getReadyStartCmdListIndexOfKey(I)I
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method protected getReadyStartForceCmd(I)Z
    .locals 0

    .line 511
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method protected getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
    .locals 1

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/config/ConfigTrigger$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/ConfigTrigger$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    return-object p0
.end method

.method protected isValidAcsVersion(I)Z
    .locals 9

    .line 276
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isValidAcsVersion:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 281
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 284
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 285
    const-string p0, "DDS set to other SIM"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 288
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v3, p1, v1, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isSimMobilityRCS(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 289
    const-string p0, "isValidAcsVersion: This is a other country SIM, RCS disabled in SIM mobility"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 293
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v2

    .line 295
    :goto_0
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v5, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v5

    .line 297
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v6, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v6

    .line 298
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result p0

    .line 299
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RCS switch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", isRcsAcsCompleted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p0, :cond_5

    .line 302
    const-string p0, "RCS service isn\'t allowed by MDM"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    if-nez v6, :cond_6

    .line 307
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCS switch is on & config version: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". This shouldn\'t happen!"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_6
    if-nez v3, :cond_9

    .line 313
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 314
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v3, :cond_7

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v3, :cond_8

    :cond_7
    const-string p0, "jibe"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 316
    :cond_8
    const-string/jumbo p0, "userSetting is disabled"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_9
    if-eqz v5, :cond_b

    .line 321
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_b

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gez p0, :cond_a

    goto :goto_1

    :cond_a
    return v4

    .line 323
    :cond_b
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "version is improper : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 7

    .line 149
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 150
    sget-object v1, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isWaitAutoConfig:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 152
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 153
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    .line 154
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result v4

    .line 155
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    .line 156
    invoke-static {v0}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_4

    .line 158
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v4, :cond_1

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 167
    :cond_2
    const-string p0, "isWaitAutoConfig: This is a other country SIM, RCS disabled in SIM mobility"

    invoke-static {v1, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v6

    .line 159
    :cond_3
    :goto_0
    const-string v4, "isWaitAutoConfig: RCS is enabled in SIM mobility"

    invoke-static {v1, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 172
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 173
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result p0

    return p0

    :cond_6
    return v6
.end method

.method protected resetAcsTryReason(I)V
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-eqz v0, :cond_0

    .line 447
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    if-eq v0, v1, :cond_1

    .line 448
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 449
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected resetTokenDeletedReason(I)V
    .locals 2

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    if-nez v0, :cond_0

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->INIT:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected sendRcsAutoconfigStart(I)V
    .locals 9

    .line 605
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 607
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 608
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 610
    const-string/jumbo v2, "root/application/1/services/rcsstate"

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 612
    :cond_0
    const-string v3, "jibe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isIidTokenNeeded(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    .line 615
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v6

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/ImsRegistration;

    .line 616
    const-string/jumbo v8, "options"

    invoke-virtual {v7, v8}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "im"

    .line 617
    invoke-virtual {v7, v8}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string/jumbo v8, "slm"

    .line 618
    invoke-virtual {v7, v8}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v6

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v5

    :goto_2
    if-eqz v7, :cond_2

    .line 625
    :cond_5
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "sec"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 626
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isConfigModuleBootUp()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isMessagingReady()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 637
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    const/16 v2, 0x1a

    invoke-interface {p0, v2, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessageDelayed(IILjava/lang/Object;I)V

    goto :goto_4

    .line 627
    :cond_8
    :goto_3
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendBroadcast com.android.ims.RCS_AUTOCONFIG_START"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 628
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 629
    const-string v1, "com.android.ims.RCS_AUTOCONFIG_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 630
    const-string v1, "is_iid_token_needed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    const-string v1, "is_rcs_registered"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 632
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 633
    const-string p1, "com.samsung.android.messaging"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 634
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 635
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_9
    :goto_4
    return-void
.end method

.method protected setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutoconfigTryReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",TR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000005

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 433
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mAcsTryReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setDualSimRcsAutoConfig(Z)V
    .locals 3

    .line 494
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualSimRcsAutoConfig: isDualSimAcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mDualSimRcsAutoConfig:Z

    return-void
.end method

.method protected setNeedResetConfig(Z)V
    .locals 3

    .line 524
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNeedResetConfig: needResetConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mNeedResetConfig:Z

    return-void
.end method

.method protected setRcsClientConfiguration(ILcom/sec/internal/interfaces/ims/config/IWorkflow;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    .line 577
    sget-object v1, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRcsClientConfiguration: isAmDefault: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 579
    const-string/jumbo p0, "setRcsClientConfiguration: imsSingleRegi is required: try to set rcc info"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    invoke-interface/range {p2 .. p7}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->setRcsClientConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected setReadyStartCmdList(IZ)V
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartCmdList:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method protected setReadyStartForceCmd(IZ)V
    .locals 3

    .line 515
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReadyStartForceCmd["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: readyStartForceCmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mReadyStartForceCmd:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method protected setRegisterFromApp(ZI)V
    .locals 3

    .line 130
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRegisterFromApp:"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 138
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setRegisterFromApp: set AcsCompleteStatus as false"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    goto :goto_0

    .line 143
    :cond_2
    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->FROM_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 145
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    return-void
.end method

.method protected setStateforTriggeringACS(I)V
    .locals 5

    .line 109
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setStateforTriggeringACS:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 115
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 116
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_3

    .line 117
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 118
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v3, v4, :cond_2

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_COLOMBIA:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->TIM_BRAZIL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "RegisterTask setState: CONFIGURING"

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 122
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTokenDeletedReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",DR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000019

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 475
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mTokenDeletedReason:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected startAutoConfig(ZLandroid/os/Message;I)V
    .locals 3

    .line 371
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAutoConfig: forced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",FORCE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000003

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 374
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 376
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    :goto_0
    return-void
.end method

.method protected startAutoConfigDualsim(ILandroid/os/Message;)V
    .locals 1

    const/16 v0, 0x9

    .line 381
    invoke-virtual {p0, v0, p2, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    return-void
.end method

.method protected startConfig(ILandroid/os/Message;I)V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessage(II)V

    .line 386
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startConfig: cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x14

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1b

    if-eq p1, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 411
    const-string/jumbo p0, "unknown cmd"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->sendRcsAutoconfigStart(I)V

    .line 394
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onComplete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string/jumbo p2, "null"

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object p2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Autoconfig start: cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 408
    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessage(II)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected triggerAutoConfig(ZILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerAutoConfig: forceAutoconfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 180
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_b

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 186
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 187
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsCanada(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 188
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 190
    invoke-interface {v3, p3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->checkRcsServiceModules(Ljava/util/List;I)V

    .line 194
    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v3, p2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isAcsCompleted()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 195
    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 196
    :cond_3
    const-string/jumbo v1, "triggerAutoConfig: try to start autoConfig"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfigForKor(ZILjava/util/List;)V

    return-void

    .line 201
    :cond_4
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 202
    const-string/jumbo v0, "phoneId"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    sget-object v0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v2, v0, :cond_7

    .line 205
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    .line 207
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 210
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_5

    .line 211
    sget-object p3, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop triggerAutoConfig because other slot is configuring"

    invoke-static {p3, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 p3, 0x61a8

    const/16 v1, 0xf

    invoke-interface {p0, v1, p2, p1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->sendConfigMessageDelayed(IILjava/lang/Object;I)V

    .line 213
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 217
    :cond_6
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 218
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 220
    :cond_7
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 223
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getDualSimRcsAutoConfig()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_9

    .line 224
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 225
    iget-object p1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfigDualsim(ILandroid/os/Message;)V

    goto :goto_2

    .line 227
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {v0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    :goto_2
    const/4 p1, 0x0

    .line 229
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    goto :goto_3

    .line 231
    :cond_9
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_3

    .line 234
    :cond_a
    const-string/jumbo p0, "triggerAutoConfig: unable to start autoConfig"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    return-void

    .line 182
    :cond_b
    :goto_4
    const-string/jumbo p0, "triggerAutoConfig: sm/regiTaskList is null"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected triggerAutoConfigForKor(ZILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 241
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p3

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p3, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 243
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "triggerAutoConfigForKor: already autoconfiguration is processing and not get complete notify yet"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 247
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p3

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p3, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 248
    iget-object p3, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "RegisterTask setState: CONFIGURING"

    invoke-virtual {p3, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 249
    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 251
    :cond_2
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 252
    const-string/jumbo v1, "phoneId"

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->needForceAcs()Z

    move-result v0

    const/16 v1, 0xd

    if-eqz v0, :cond_3

    .line 254
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    const/4 p1, 0x1

    invoke-interface {p0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_0

    .line 256
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p0, v1, p3}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;

    move-result-object p3

    invoke-interface {p0, p1, p3, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_0

    .line 261
    :cond_4
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 265
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_0

    .line 266
    sget-object p0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "triggerAutoConfigForKor: MSISDN is null, try to RCS ACS after registered VoLTE"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected triggerAutoConfiguration(I)V
    .locals 5

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    .line 587
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/google/SecImsNotifier;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v1

    .line 589
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "triggerAutoConfiguration: isAmDefault: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "clientVendor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 590
    const-string v3, "Goog"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 591
    const-string/jumbo v0, "triggerAutoConfiguration: imsSingleRegi is required: try to trigger autoConfig forcibly"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 595
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    const/4 v2, 0x1

    .line 597
    invoke-virtual {p0, v2, p1, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V
    .locals 3

    .line 331
    sget-object v0, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAutoConfig: mobileNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p2, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 333
    const-string/jumbo p0, "tryAutoConfig: workflow is null"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 337
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",FORCE:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartForceCmd(I)Z

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",RST:"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getNeedResetConfig()Z

    move-result v1

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const v1, 0x13000007

    invoke-static {v1, p4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 340
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 342
    iget-object p4, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p4, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->updateMobileNetworkforDualRcs(I)Z

    move-result p4

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryAutoConfig: updateMobileNetworkforDualRcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getDualSimRcsAutoConfig()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 345
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startAutoConfigDualsim(Z)V

    .line 346
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    goto :goto_1

    .line 348
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartForceCmd(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/ConfigTrigger;->getNeedResetConfig()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 350
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfigNeedResetConfig(Z)V

    .line 351
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfig(Z)V

    .line 355
    :goto_0
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(IZ)V

    goto :goto_1

    .line 357
    :cond_3
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz p3, :cond_4

    .line 358
    instance-of p3, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    if-eqz p3, :cond_4

    .line 359
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->forceAutoConfig(Z)V

    goto :goto_1

    .line 361
    :cond_4
    invoke-interface {p1, p4}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startAutoConfig(Z)V

    .line 365
    :goto_1
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 366
    invoke-virtual {p0, p2, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    :cond_5
    return-void
.end method

.method protected tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 8

    .line 529
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 530
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mCm:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    .line 532
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v1, :cond_2

    .line 534
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsVersion()I

    move-result v5

    const/4 v6, -0x2

    if-ne v5, v6, :cond_2

    if-eqz v2, :cond_2

    .line 537
    sget-object v2, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ACS version: -2, IMS RCS switch enabled - set force autoconfig NOW."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDisabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 541
    const-string v5, "CHN Need block ACS when user setting is ON."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 543
    :cond_1
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    move v2, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    .line 548
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigTrigger;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v5

    .line 549
    invoke-static {v5}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v4

    .line 552
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 553
    sget-object v6, Lcom/sec/internal/ims/config/ConfigTrigger;->LOG_TAG:Ljava/lang/String;

    const-string v7, "autoconfig is not ready"

    invoke-static {v6, v0, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 555
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_7

    .line 557
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)V

    return v3

    :cond_4
    if-eqz v1, :cond_6

    .line 563
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDisabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEurNonRjil(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 564
    :cond_5
    const-string p0, "Version & validity == 0. Autoconfiguration will be performed after next reboot"

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 567
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, v2, p1, v5}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)V

    return v3

    :cond_7
    return v4
.end method
