.class public Lcom/sec/internal/ims/config/util/TelephonySupport;
.super Ljava/lang/Object;
.source "TelephonySupport.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TelephonySupport"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;
    .locals 8

    .line 28
    invoke-static {p0}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const/4 v1, 0x0

    .line 31
    :try_start_0
    aget-byte v2, p0, v1

    const/16 v3, -0x25

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v3, :cond_3

    .line 32
    sget-object v2, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    const-string v3, "calculateAkaResponse: in"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    aget-byte v2, p0, v4

    if-lez v2, :cond_0

    .line 52
    new-array v3, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    :try_start_1
    invoke-static {p0, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, v0

    move-object v5, v1

    :goto_0
    move-object v7, v5

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_1
    add-int/lit8 v4, v2, 0x2

    .line 56
    aget-byte v4, p0, v4

    if-lez v4, :cond_1

    .line 58
    new-array v5, v4, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v2, 0x3

    .line 59
    :try_start_2
    invoke-static {p0, v6, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    move-object v7, v1

    goto :goto_4

    :cond_1
    move-object v5, v0

    :goto_2
    add-int/lit8 v6, v2, 0x3

    add-int/2addr v6, v4

    .line 61
    aget-byte v6, p0, v6

    if-lez v6, :cond_2

    .line 63
    new-array v7, v6, [B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    .line 64
    :try_start_3
    invoke-static {p0, v2, v7, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v1, v0

    goto :goto_4

    :cond_2
    move-object v7, v0

    :goto_3
    move-object p0, v0

    goto :goto_5

    :cond_3
    const/16 v3, -0x24

    if-ne v2, v3, :cond_4

    .line 82
    :try_start_4
    aget-byte v2, p0, v4

    if-lez v2, :cond_4

    .line 84
    new-array v3, v2, [B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 85
    :try_start_5
    invoke-static {p0, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v5, v0

    move-object v7, v5

    move-object p0, v3

    move-object v3, v7

    goto :goto_5

    :catch_4
    move-exception p0

    move-object v5, v0

    move-object v7, v5

    move-object v1, v3

    move-object v3, v7

    .line 89
    :goto_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    sget-object v2, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error2:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, v1

    goto :goto_5

    :cond_4
    move-object p0, v0

    move-object v3, p0

    move-object v5, v3

    move-object v7, v5

    :goto_5
    if-nez v3, :cond_5

    if-nez p0, :cond_5

    goto :goto_6

    .line 94
    :cond_5
    new-instance v0, Lcom/sec/internal/ims/config/util/AkaResponse;

    invoke-direct {v0, v5, v7, p0, v3}, Lcom/sec/internal/ims/config/util/AkaResponse;-><init>([B[B[B[B)V

    :goto_6
    return-object v0
.end method

.method public static buildMainKey(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5

    .line 98
    invoke-static {p1}, Lcom/sec/internal/ims/config/util/TelephonySupport;->buildAkaResponse(Ljava/lang/String;)Lcom/sec/internal/ims/config/util/AkaResponse;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 101
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/util/AkaResponse;->getIk()[B

    move-result-object v1

    .line 102
    sget-object v2, Lcom/sec/internal/ims/config/util/TelephonySupport;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IK :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/util/AkaResponse;->getCk()[B

    move-result-object p1

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CK :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    array-length v0, p0

    array-length v2, v1

    add-int/2addr v0, v2

    array-length v2, p1

    add-int/2addr v0, v2

    .line 109
    new-instance v2, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v2, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 110
    invoke-virtual {v2, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 111
    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 112
    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 113
    invoke-virtual {v2}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method
