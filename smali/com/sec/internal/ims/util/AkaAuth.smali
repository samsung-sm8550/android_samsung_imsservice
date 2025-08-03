.class public Lcom/sec/internal/ims/util/AkaAuth;
.super Ljava/lang/Object;
.source "AkaAuth.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AkaAuth"


# direct methods
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

.method public static getAkaResponse(ILjava/lang/String;)Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
    .locals 3

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 50
    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 51
    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    .line 55
    sget-object p0, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getAkaResponse(): getIsimResponse is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 62
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getRes()[B

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object p1

    if-eqz p1, :cond_3

    .line 66
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getRes()[B

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 69
    new-instance v2, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;

    invoke-direct {v2, p1, v1, p0}, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 72
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    const-string p1, "getAkaResponse(): response wrongly encoded."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 75
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Parsing failed for response"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-object v0

    :catch_1
    move-exception p0

    .line 47
    sget-object p1, Lcom/sec/internal/ims/util/AkaAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error decoding challenge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
