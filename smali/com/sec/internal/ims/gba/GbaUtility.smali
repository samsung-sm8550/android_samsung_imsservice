.class public Lcom/sec/internal/ims/gba/GbaUtility;
.super Ljava/lang/Object;
.source "GbaUtility.java"


# static fields
.field private static final ALGORITHM_HMAC_SHA_256:Ljava/lang/String; = "HmacSHA256"

.field private static final TAG:Ljava/lang/String; = "GbaUtility"

.field private static final TRANSFER_BASE:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate([B[B)[B
    .locals 4

    .line 185
    const-string v0, "GBA ME KEY Algo Calculation encountered an error"

    :try_start_0
    const-string v1, "HmacSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 186
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 187
    invoke-virtual {v1, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 189
    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    .line 195
    :goto_0
    invoke-virtual {p0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 196
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :goto_1
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 192
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static calculateKs([B[B)[B
    .locals 2

    .line 135
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 137
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 139
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 140
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 142
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0
.end method

.method private static calculateNafId([B[B)[B
    .locals 2

    .line 123
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    .line 125
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 127
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 128
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 130
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0
.end method

.method private static calculateS([B[B[B[B[B[B[B[B[B)[B
    .locals 2

    .line 150
    array-length v0, p0

    .line 152
    array-length v1, p1

    add-int/2addr v0, v1

    .line 153
    array-length v1, p2

    add-int/2addr v0, v1

    .line 155
    array-length v1, p3

    add-int/2addr v0, v1

    .line 156
    array-length v1, p4

    add-int/2addr v0, v1

    .line 158
    array-length v1, p5

    add-int/2addr v0, v1

    .line 159
    array-length v1, p6

    add-int/2addr v0, v1

    .line 161
    array-length v1, p7

    add-int/2addr v0, v1

    .line 162
    array-length v1, p8

    add-int/2addr v0, v1

    .line 164
    new-instance v1, Lcom/sec/internal/helper/ByteArrayWriter;

    invoke-direct {v1, v0}, Lcom/sec/internal/helper/ByteArrayWriter;-><init>(I)V

    .line 165
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 168
    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 170
    invoke-virtual {v1, p3}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 171
    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 173
    invoke-virtual {v1, p5}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 174
    invoke-virtual {v1, p6}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 176
    invoke-virtual {v1, p7}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 177
    invoke-virtual {v1, p8}, Lcom/sec/internal/helper/ByteArrayWriter;->write([B)V

    .line 179
    invoke-virtual {v1}, Lcom/sec/internal/helper/ByteArrayWriter;->getResult()[B

    move-result-object p0

    return-object p0
.end method

.method public static convertCipherSuite(Ljava/lang/String;Z)[B
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConvertCipherSuite Cipher Suite: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/gba/params/CipherSuite;->forData(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    .line 60
    new-array p0, p0, [B

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x2ft
    .end array-data
.end method

.method public static generateLastAuthInfoKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-subId"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getByteArrayForLength(I)[B
    .locals 3

    const/4 v0, 0x2

    .line 51
    new-array v0, v0, [B

    .line 52
    rem-int/lit16 v1, p0, 0x100

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 53
    div-int/lit16 p0, p0, 0x100

    int-to-byte p0, p0

    const/4 v1, 0x0

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static getNafId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 240
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 242
    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 243
    aget-object v0, p0, v1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    aget-object p0, p0, v1

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 245
    aget-object p0, p0, v0

    goto :goto_0

    .line 247
    :cond_0
    aget-object p0, p0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getNafPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 217
    const-string v0, "/"

    .line 219
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "path"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 224
    :goto_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 226
    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 235
    :cond_1
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPath "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GbaUtility"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static getNafUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 206
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/4 p0, 0x0

    .line 211
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNafUrl "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GbaUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getSecurityProtocolId([B[BZ)[B
    .locals 6

    const/4 v0, 0x0

    .line 268
    aget-byte v1, p1, v0

    const/4 v2, 0x1

    aget-byte p1, p1, v2

    const/4 v3, 0x5

    new-array v4, v3, [B

    aput-byte v2, v4, v0

    aput-byte v0, v4, v2

    const/4 v5, 0x2

    aput-byte v2, v4, v5

    const/4 v2, 0x3

    aput-byte v1, v4, v2

    const/4 v1, 0x4

    aput-byte p1, v4, v1

    .line 269
    new-array p1, v3, [B

    fill-array-data p1, :array_0

    if-eqz p2, :cond_0

    .line 271
    array-length p1, p0

    add-int/2addr p1, v3

    new-array p1, p1, [B

    .line 272
    array-length p2, p0

    invoke-static {p0, v0, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    array-length p0, p0

    invoke-static {v4, v0, p1, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 275
    :cond_0
    array-length p2, p0

    add-int/2addr p2, v3

    new-array p2, p2, [B

    .line 276
    array-length v1, p0

    invoke-static {p0, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    array-length p0, p0

    invoke-static {p1, v0, p2, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p2

    :goto_0
    return-object p1

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0x2ft
    .end array-data
.end method

.method public static declared-synchronized igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p3

    move-object/from16 v6, p4

    move-object/from16 v1, p5

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-class v11, Lcom/sec/internal/ims/gba/GbaUtility;

    monitor-enter v11

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 77
    :try_start_0
    const-string v7, "GbaUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "gbatype = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v7, "GbaUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ck = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const-string v7, "GbaUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ik = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v7, "GbaUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rand = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v7, "GbaUtility"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fqdn for nafid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p5 .. p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-array v7, v5, [B

    aput-byte v5, v7, v4

    .line 86
    new-array v8, v3, [B

    fill-array-data v8, :array_0

    .line 87
    invoke-static {v3}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v3

    .line 91
    array-length v9, v0

    invoke-static {v9}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v9

    .line 95
    array-length v12, v6

    invoke-static {v12}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v12

    .line 97
    invoke-static/range {p1 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateKs([B[B)[B

    move-result-object v13

    if-eqz p8, :cond_0

    .line 99
    const-string v14, "GbaUtility"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cipherSuite tls = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p9}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v14, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    aget-byte v10, p9, v4

    aget-byte v14, p9, v5

    new-array v2, v2, [B

    aput-byte v5, v2, v4

    aput-byte v4, v2, v5

    const/4 v4, 0x2

    aput-byte v5, v2, v4

    const/4 v4, 0x3

    aput-byte v10, v2, v4

    const/4 v4, 0x4

    aput-byte v14, v2, v4

    .line 101
    invoke-static {v1, v2}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateNafId([B[B)[B

    move-result-object v10

    .line 102
    array-length v1, v10

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v14

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v4, p3

    move-object v5, v9

    move-object/from16 v6, p4

    move-object v7, v12

    move-object v8, v10

    move-object v9, v14

    .line 103
    invoke-static/range {v1 .. v9}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateS([B[B[B[B[B[B[B[B[B)[B

    move-result-object v0

    .line 104
    invoke-static {v13, v0}, Lcom/sec/internal/ims/gba/GbaUtility;->calculate([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 105
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 107
    :cond_0
    new-array v2, v2, [B

    fill-array-data v2, :array_1

    .line 108
    invoke-static {v1, v2}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateNafId([B[B)[B

    move-result-object v10

    .line 109
    array-length v1, v10

    invoke-static {v1}, Lcom/sec/internal/ims/gba/GbaUtility;->getByteArrayForLength(I)[B

    move-result-object v14

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v4, p3

    move-object v5, v9

    move-object/from16 v6, p4

    move-object v7, v12

    move-object v8, v10

    move-object v9, v14

    .line 110
    invoke-static/range {v1 .. v9}, Lcom/sec/internal/ims/gba/GbaUtility;->calculateS([B[B[B[B[B[B[B[B[B)[B

    move-result-object v0

    .line 111
    invoke-static {v13, v0}, Lcom/sec/internal/ims/gba/GbaUtility;->calculate([B[B)[B

    move-result-object v0

    const/4 v1, 0x2

    .line 112
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    const-string v1, "GbaUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "returning base64EncodedGbaKey [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit v11

    return-object v0

    .line 72
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GBA ME KEY Calculation - input cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v11

    throw v0

    :array_0
    .array-data 1
        0x67t
        0x62t
        0x61t
        0x2dt
        0x6dt
        0x65t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x2t
    .end array-data
.end method

.method public static isTls(Ljava/lang/String;)Z
    .locals 1

    .line 256
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 257
    const-string p0, "https"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/net/URISyntaxException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
