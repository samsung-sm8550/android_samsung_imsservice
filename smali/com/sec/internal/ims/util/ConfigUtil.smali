.class public Lcom/sec/internal/ims/util/ConfigUtil;
.super Ljava/lang/Object;
.source "ConfigUtil.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "AES"

.field public static final LOCAL_CONFIG_FILE:Ljava/lang/String; = "localconfig"

.field private static final LOG_TAG:Ljava/lang/String; = "ConfigUtil"

.field public static final SDCARD_CONFIG_FILE:Ljava/lang/String; = "/localconfig/config-local.xml"

.field private static final SP_KEY_GLOBAL_GC_ENABLED:Ljava/lang/String; = "globalgcenabled"

.field public static final TRANSFORMATION:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"

.field private static final mAesIvBytes:[B

.field private static final mAesKeyBytes:[B


# direct methods
.method public static synthetic $r8$lambda$JWZwgBhHt9hK4_TeRll7wbwJOAg(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->lambda$isSimMobilityRCS$3(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$nTGcYRiNATnW6kLbtY3wytm-1xM(I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->lambda$hasAcsProfile$0(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$qOyCXzvkUlnYIOZbQrG4n1yhQuM(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->lambda$hasChatbotService$1(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$shA2_E1APC3tgWXu0r9Un_ZuMkw(ZLcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->lambda$isSimMobilityRCS$4(ZLcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$xuLCpZuFDjE54zKpMw7uC-P8ius(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->lambda$hasChatbotService$2(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    .line 65
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->mAesKeyBytes:[B

    const/16 v0, 0x10

    .line 73
    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->mAesIvBytes:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildIdentity(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    .line 490
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 492
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    .line 493
    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v2

    .line 495
    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    .line 497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, ""

    if-nez v3, :cond_0

    .line 498
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI_"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 499
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSISDN_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 501
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMEI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 504
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "identity error"

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move-object p0, v4

    .line 506
    :goto_0
    const-string v1, "[\\W]"

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 507
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildIdentity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", + identity : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public static checkMdmRcsStatus(Landroid/content/Context;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static decryptConfigParams(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;ZI)Ljava/lang/String;
    .locals 4

    if-eqz p3, :cond_2

    .line 547
    sget-object p3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p3, :cond_2

    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result p2

    if-nez p2, :cond_2

    .line 551
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 p3, 0x4

    const/4 p4, 0x0

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p2, "nms_url"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v3

    goto :goto_1

    :sswitch_1
    const-string p2, "fthttpcsuri"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v2

    goto :goto_1

    :sswitch_2
    const-string p2, "fthttpcspwd"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_1

    :sswitch_3
    const-string/jumbo p2, "token"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_1

    :sswitch_4
    const-string p2, "fthttpcsuser"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p4

    goto :goto_1

    :sswitch_5
    const-string p2, "nc_url"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    if-eq p2, v2, :cond_1

    if-eq p2, v3, :cond_1

    if-eq p2, p3, :cond_1

    if-eq p2, v0, :cond_1

    goto :goto_2

    .line 558
    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-static {p1, p4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, p2

    goto :goto_2

    .line 564
    :catch_0
    sget-object p2, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to decrypt this param "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Wrong param "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", data "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3eaae01b -> :sswitch_5
        -0x248159ef -> :sswitch_4
        0x696b9f9 -> :sswitch_3
        0xf569837 -> :sswitch_2
        0xf56aa66 -> :sswitch_1
        0x7b6f3544 -> :sswitch_0
    .end sparse-switch
.end method

.method public static decryptParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 450
    const-string v0, "UTF-8"

    if-eqz p0, :cond_3

    .line 451
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 455
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    if-eqz p0, :cond_1

    .line 457
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/sec/internal/ims/util/ConfigUtil;->mAesKeyBytes:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 458
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/sec/internal/ims/util/ConfigUtil;->mAesIvBytes:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 459
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x2

    .line 460
    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 461
    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 462
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    move-object p1, v1

    :cond_2
    return-object p1

    .line 465
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object p1
.end method

.method public static doesUpRcsProfileMatchProvisioningVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 385
    :cond_0
    const-string v1, "UP_1.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "UP_T"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 387
    :cond_1
    const-string v1, "UP_2.0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "UP_2.2"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 389
    :cond_2
    const-string v1, "UP_2.3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "UP_2.4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v0

    .line 390
    :cond_4
    :goto_0
    const-string p0, "5.0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 388
    :cond_5
    :goto_1
    const-string p0, "4.0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 386
    :cond_6
    :goto_2
    const-string p0, "2.0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static encryptParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 427
    const-string v0, "UTF-8"

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/sec/internal/ims/util/ConfigUtil;->mAesKeyBytes:[B

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 428
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/sec/internal/ims/util/ConfigUtil;->mAesIvBytes:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 429
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v4, 0x1

    .line 430
    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 431
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 432
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 434
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs encryptParams(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 440
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 441
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 443
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>([B)V

    .line 444
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getAcsCustomServerUrl(I)Ljava/lang/String;
    .locals 2

    .line 84
    const-string/jumbo v0, "rcs_custom_config_server_url"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAcsServerType(I)Ljava/lang/String;
    .locals 2

    .line 80
    const-string/jumbo v0, "rcs_application_server"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAutoconfigSourceWithFeature(II)I
    .locals 5

    .line 170
    const-string/jumbo v0, "rcs_local_config_server"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p1

    .line 171
    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v0

    .line 172
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoconfigSourceWithFeature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " from globalSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 175
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 176
    :goto_0
    const-string v4, "jibe"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v3, v0, :cond_3

    if-eqz p1, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, p0, v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChatEnabled(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 180
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAutoconfigSourceWithFeature: use "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    return p1
.end method

.method public static getConfigId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 398
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "raw"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 400
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getDmaPackage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    .line 603
    :try_start_0
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 604
    :try_start_1
    sget-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDmaPackage: defaultSmsApp from Telephony: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 p0, 0x0

    .line 606
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDmaPackage: fail to get from Telephony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_1
    return-object p0
.end method

.method public static getFormattedUserAgent(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 474
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 475
    const-string p0, "SKT"

    goto :goto_0

    .line 476
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 477
    const-string p0, "KT"

    goto :goto_0

    .line 478
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 479
    const-string p0, "LGU"

    goto :goto_0

    .line 480
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 481
    const-string p0, "OMD"

    goto :goto_0

    .line 480
    :cond_3
    const-string p0, ""

    .line 484
    :goto_0
    const-string v0, "TTA-RCS/%s %s/%s Device_Type/RCS_Android_Phone %s"

    filled-new-array {p3, p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 486
    :cond_4
    const-string p0, "IM-client/OMA1.0 Samsung/%s-%s Samsung-RCS/%s"

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getGlobalGcEnabled(Landroid/content/Context;I)Z
    .locals 3

    .line 512
    const-string v0, "globalgcenabled"

    const/4 v1, 0x0

    const-string v2, "globalsettings"

    invoke-static {p1, p0, v2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getGmsVersion(Landroid/content/Context;I)J
    .locals 4

    const-wide/16 v0, 0x0

    .line 532
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.android.gms"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 534
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "calling package NameNotFoundException"

    invoke-static {p0, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GmsVersion : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-wide v0
.end method

.method public static getModelName(I)Ljava/lang/String;
    .locals 2

    .line 92
    const-string/jumbo v0, "rcs_model_name"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getNetworkType(I)Ljava/lang/String;
    .locals 2

    .line 88
    const-string/jumbo v0, "rcs_network_type"

    const-string v1, "ims,internet,wifi"

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 147
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 148
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getRcsProfile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getRcsProfile(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 155
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRcsProfileLoaderInternalWithFeature: rcsProfile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "jibe"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_1

    goto :goto_1

    .line 161
    :cond_1
    const-string v0, "UP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p2, v1, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChatEnabled(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Z)Z

    move-result p0

    if-nez p0, :cond_2

    .line 162
    const-string p0, "getRcsProfileLoaderInternalWithFeature: use default rcsProfile"

    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 163
    const-string p0, ""

    return-object p0

    .line 165
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public static getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 6

    .line 122
    const-string v0, ""

    if-nez p2, :cond_0

    .line 123
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getRcsProfileWithFeature: imsProfile: empty"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 126
    :cond_0
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object p2

    .line 127
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRcsProfileWithFeature: rcsProfile from imsProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    .line 131
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "jibe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    goto :goto_1

    .line 137
    :cond_2
    const-string v3, "UP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p0, p1, v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChatEnabled(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Z)Z

    move-result p0

    if-nez p0, :cond_3

    .line 138
    const-string p0, "getRcsProfileWithFeature: use default rcsProfile"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 141
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRcsProfileWithFeature: use "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " rcsProfile"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_1
    return-object p2
.end method

.method public static getResourcesFromFile(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 406
    const-string v0, "/localconfig/config-local.xml"

    .line 407
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResourcesFromFile: fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 408
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 409
    new-instance p0, Ljava/io/FileInputStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    .line 410
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "localconfig"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getConfigId(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p2

    .line 412
    new-array p2, p2, [B

    .line 413
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_1

    .line 415
    const-string v0, "fail to read buffer"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 417
    :cond_1
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 419
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :catch_1
    move-exception p0

    move-object v2, p1

    goto :goto_4

    :goto_2
    if-eqz p0, :cond_2

    .line 408
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 420
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public static getSetting(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 104
    const-string v0, ""

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsPort(I)Ljava/lang/String;
    .locals 2

    .line 100
    const-string/jumbo v0, "rcs_otp_sms_port"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSmsType(I)Ljava/lang/String;
    .locals 2

    .line 96
    const-string/jumbo v0, "rcs_otp_sms_type"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hasAcsProfile(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 4

    .line 185
    sget-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "hasAcsProfile:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 190
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    .line 191
    const-string p0, "no SIM loaded"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 195
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 197
    const-string p0, "no RegistrationManager!"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 201
    :cond_2
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getGlobalGcEnabled(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {p0, p1, p2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSimMobilityRCS(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 202
    const-string p0, "This is a other country SIM, RCS disabled in SIM mobility"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 206
    :cond_3
    sget-object p0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda4;-><init>()V

    .line 207
    invoke-virtual {p0, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda5;-><init>(I)V

    .line 208
    invoke-virtual {p0, p2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z
    .locals 1

    .line 251
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda0;-><init>(I)V

    .line 252
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda1;-><init>()V

    .line 253
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 254
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isGcForEur(I)Z
    .locals 2

    .line 310
    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "jibe"

    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsPreConsent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGoogDmaPackageInuse(Landroid/content/Context;I)Z
    .locals 4

    .line 587
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getDmaPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 589
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "default sms app is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 593
    :cond_0
    const-string v0, "goog_message_app_package"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 594
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 595
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sms app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " googlePackage:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isGoogDmaPackageInuse : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isIidTokenNeeded(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 6

    .line 517
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getGmsVersion(Landroid/content/Context;I)J

    move-result-wide v0

    .line 518
    const-string/jumbo v2, "rcs_client_version"

    const-string v3, "6.0"

    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 520
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 521
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 523
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GOOGLE_PLAY_SERVICES_PACKAGE Version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", clientVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/32 v3, 0xc8d8040

    cmp-long v0, v0, v3

    if-ltz v0, :cond_2

    const/high16 v0, 0x41080000    # 8.5f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_2

    .line 526
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static isJibeAs(I)Z
    .locals 1

    .line 329
    const-string v0, "jibe"

    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isJibeAsAndDownloadableSamsungMsgInUsed(Landroid/content/Context;I)Z
    .locals 2

    .line 613
    const-string/jumbo v0, "rcs_application_server"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.samsung.android.messaging"

    invoke-static {p0, p1}, Lcom/sec/internal/helper/os/PackageUtils;->hasPrivilegedPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "jibe"

    .line 615
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z
    .locals 6

    .line 215
    sget-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isRcsAvailable:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p2, :cond_8

    .line 216
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 220
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    const-string p0, "DDS set to other SIM"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 224
    :cond_1
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 225
    const-string p0, "RCS service isn\'t allowed by MDM"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 231
    :cond_2
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    :cond_3
    const-string v2, "jibe"

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_4
    const/4 v2, -0x1

    .line 232
    invoke-static {p0, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p0

    if-eq p0, v4, :cond_6

    const/4 v2, 0x2

    if-ne p0, v2, :cond_5

    goto :goto_0

    :cond_5
    move p0, v1

    goto :goto_1

    :cond_6
    :goto_0
    move p0, v4

    .line 236
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-result-object v2

    .line 239
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    .line 240
    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object p2

    .line 241
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsAvailable, AcsTryReason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", version="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p2, :cond_7

    .line 242
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_7

    move p0, v4

    .line 247
    :cond_7
    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isRcsEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    move v1, v4

    :cond_8
    :goto_2
    return v1
.end method

.method public static isRcsCanada(Lcom/sec/internal/constants/Mno;)Z
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result p0

    return p0
.end method

.method public static isRcsChatEnabled(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Z)Z
    .locals 1

    if-eqz p2, :cond_3

    .line 110
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object p2

    .line 112
    const-string p3, "enableIms"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "enableServiceRcs"

    .line 113
    invoke-static {p2, p3, v0}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "enableServiceRcschat"

    .line 114
    invoke-static {p2, p3, v0}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_1

    .line 115
    :cond_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    move p3, p0

    goto :goto_0

    :cond_2
    move p3, v0

    .line 116
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRcsChatEnabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    return p3
.end method

.method public static isRcsChn(Lcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 275
    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->CBN:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isRcsEur(I)Z
    .locals 0

    .line 263
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    return p0
.end method

.method public static isRcsEur(Lcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 267
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isSea()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isMea()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isSwa()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isRcsEurNonRjil(Lcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 279
    invoke-static {p0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    .line 258
    const-string v0, "mmtel"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mmtel-video"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "smsip"

    .line 259
    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRcsPreConsent(I)Z
    .locals 2

    .line 325
    const-string/jumbo v0, "rcs_pre_consent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static isSecDmaPackageInuse(Landroid/content/Context;I)Z
    .locals 4

    .line 574
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getDmaPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 576
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "default sms app is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 579
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 580
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 581
    sget-object v1, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default sms app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " samsungPackage:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSecDmaPackageInuse : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSimMobilityRCS(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z
    .locals 2

    .line 283
    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result p0

    .line 284
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 285
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string p2, "isSimMobilityRCS: no need to check about SimMobility"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 289
    :cond_0
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance v0, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda2;-><init>(I)V

    .line 290
    invoke-virtual {p3, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/util/ConfigUtil$$ExternalSyntheticLambda3;-><init>(Z)V

    .line 291
    invoke-virtual {p1, p3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 292
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 294
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p0

    :goto_0
    return v1
.end method

.method public static isValidMsisdn(Ljava/lang/String;)Z
    .locals 4

    .line 622
    const-string v0, "invalid msisdn is used"

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    goto :goto_0

    .line 628
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    const-string v2, "00000000"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 635
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 630
    sget-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidMsisdn: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 623
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static synthetic lambda$hasAcsProfile$0(I)Ljava/lang/Boolean;
    .locals 2

    .line 209
    sget-object v0, Lcom/sec/internal/ims/util/ConfigUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No RCS profile found"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static synthetic lambda$hasChatbotService$1(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 252
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$hasChatbotService$2(Lcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 1

    .line 253
    const-string v0, "chatbot-communication"

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isSimMobilityRCS$3(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 290
    sget-object v0, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isSimMobilityRCS$4(ZLcom/sec/ims/settings/ImsProfile;)Ljava/lang/Boolean;
    .locals 0

    .line 291
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static shallUsePreviousCookie(ILcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 367
    sget-object v0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    const/16 p1, 0x1f4

    if-lt p0, p1, :cond_0

    const/16 p1, 0x1ff

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
