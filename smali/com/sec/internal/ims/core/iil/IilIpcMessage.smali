.class public Lcom/sec/internal/ims/core/iil/IilIpcMessage;
.super Lcom/sec/internal/ims/core/iil/IpcMessage;
.source "IilIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "IilIpcMessage"

.field private static final MAX_IIL_REGISTRATION:I = 0x10c


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/iil/IpcMessage;-><init>(III)V

    return-void
.end method

.method public static ImsChangePreferredNetwork()Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4

    .line 150
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x15

    const/4 v2, 0x3

    const/16 v3, 0x70

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 154
    const-string v1, "IilIpcMessage"

    const-string v2, "ImsChangePreferredNetwork()"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 156
    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 157
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return-object v0
.end method

.method public static encodeIilConnected()Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4

    .line 21
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v1, 0x12

    const/4 v2, 0x3

    const/16 v3, 0x70

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 23
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return-object v0
.end method

.method public static encodeImsPreferenceNoti(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4

    .line 87
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/4 v1, 0x6

    const/4 v2, 0x3

    const/16 v3, 0x70

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "NotiType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilIpcMessage"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toByteArray(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)[B

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 94
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return-object v0
.end method

.method public static encodeImsPreferenceResp(Lcom/sec/internal/ims/core/iil/IilImsPreference;)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 4

    .line 99
    new-instance v0, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/4 v1, 0x6

    const/4 v2, 0x2

    const/16 v3, 0x70

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 103
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IilIpcMessage"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 105
    invoke-static {p0, v1}, Lcom/sec/internal/ims/core/iil/IilImsPreference;->toByteArray(Lcom/sec/internal/ims/core/iil/IilImsPreference;I)[B

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 106
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return-object v0
.end method

.method public static encodeImsRegisgtrationInfo(IZZZZZIIIIIILjava/lang/String;I)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    move/from16 v6, p10

    move/from16 v7, p11

    move-object/from16 v8, p12

    move/from16 v9, p13

    .line 30
    new-instance v10, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v11, 0x70

    const/4 v12, 0x1

    const/4 v13, 0x3

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    const/4 v11, 0x0

    if-eqz v8, :cond_0

    .line 36
    const-string v14, "UTF-8"

    invoke-static {v14}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 37
    array-length v14, v8

    const/16 v15, 0x100

    if-le v14, v15, :cond_1

    move v14, v15

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    move v14, v11

    :cond_1
    :goto_0
    const/16 v15, 0x10c

    .line 40
    new-array v15, v15, [B

    .line 43
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "rat="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", isVoLte="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isSmsIp="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isRcs="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isPsVT="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", isCdpn="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", ecmp="

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "IilIpcMessage"

    invoke-static {v13, v12}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    if-eqz v2, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    if-eqz v3, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    if-eqz v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    move/from16 v1, p0

    int-to-byte v1, v1

    .line 63
    aput-byte v1, v15, v11

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 64
    aput-byte v0, v15, v1

    move/from16 v0, p6

    int-to-byte v0, v0

    const/4 v1, 0x2

    .line 65
    aput-byte v0, v15, v1

    move/from16 v0, p7

    int-to-byte v0, v0

    const/4 v1, 0x3

    .line 66
    aput-byte v0, v15, v1

    int-to-byte v0, v5

    const/4 v1, 0x4

    .line 67
    aput-byte v0, v15, v1

    move/from16 v0, p9

    int-to-byte v0, v0

    const/4 v1, 0x5

    .line 68
    aput-byte v0, v15, v1

    shr-int/lit8 v0, v6, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x6

    .line 69
    aput-byte v0, v15, v1

    int-to-byte v0, v6

    const/4 v1, 0x7

    .line 70
    aput-byte v0, v15, v1

    shr-int/lit8 v0, v7, 0x8

    int-to-byte v0, v0

    const/16 v1, 0x8

    .line 71
    aput-byte v0, v15, v1

    int-to-byte v0, v7

    const/16 v1, 0x9

    .line 72
    aput-byte v0, v15, v1

    int-to-byte v0, v14

    const/16 v1, 0xa

    .line 73
    aput-byte v0, v15, v1

    const/16 v0, 0xb

    move v1, v11

    :goto_1
    if-ge v1, v14, :cond_6

    add-int/lit8 v2, v0, 0x1

    .line 75
    aget-byte v3, v8, v1

    aput-byte v3, v15, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_1

    :cond_6
    :goto_2
    const/16 v1, 0x10b

    if-ge v0, v1, :cond_7

    add-int/lit8 v1, v0, 0x1

    .line 78
    aput-byte v11, v15, v0

    move v0, v1

    goto :goto_2

    :cond_7
    int-to-byte v0, v9

    .line 80
    aput-byte v0, v15, v1

    .line 82
    iput-object v15, v10, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 83
    invoke-virtual {v10}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return-object v10
.end method

.method public static encodeImsRetryOverNoti(IZZZZZII)Lcom/sec/internal/ims/core/iil/IilIpcMessage;
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x2

    .line 114
    new-instance v2, Lcom/sec/internal/ims/core/iil/IilIpcMessage;

    const/16 v3, 0xc

    const/4 v4, 0x3

    const/16 v5, 0x70

    invoke-direct {v2, v5, v3, v4}, Lcom/sec/internal/ims/core/iil/IilIpcMessage;-><init>(III)V

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoLte "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isSmsIp "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isRcs "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isPsVT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isCdpn "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " ecmp"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "IilIpcMessage"

    invoke-static {v5, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    or-int/2addr p1, v1

    :cond_0
    if-eqz p3, :cond_1

    or-int/2addr p1, v0

    :cond_1
    if-eqz p4, :cond_2

    or-int/lit8 p1, p1, 0x8

    :cond_2
    if-eqz p5, :cond_3

    or-int/lit8 p1, p1, 0x20

    :cond_3
    int-to-byte p0, p0

    int-to-byte p1, p1

    int-to-byte p2, p6

    int-to-byte p3, p7

    .line 142
    new-array p4, v0, [B

    const/4 p5, 0x0

    aput-byte p0, p4, p5

    const/4 p0, 0x1

    aput-byte p1, p4, p0

    aput-byte p2, p4, v1

    aput-byte p3, p4, v4

    .line 144
    iput-object p4, v2, Lcom/sec/internal/ims/core/iil/IpcMessage;->mIpcBody:[B

    .line 145
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/iil/IpcMessage;->createIpcMessage()[B

    return-object v2
.end method
