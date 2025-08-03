.class public Lcom/sec/internal/helper/httpclient/DigestAuth;
.super Ljava/lang/Object;
.source "DigestAuth.java"


# static fields
.field private static final AKAV1_MD5:Ljava/lang/String; = "AKAv1-MD5"

.field private static final AKAV2_MD5:Ljava/lang/String; = "AKAv2-MD5"

.field private static final AKAV2_PASSWORD_KEY:Ljava/lang/String; = "http-digest-akav2-password"

.field private static final AUTH:Ljava/lang/String; = "auth"

.field private static final AUTH_INT:Ljava/lang/String; = "auth-int"

.field private static final HEXADECIMAL:[C

.field private static final HMACMD5:Ljava/lang/String; = "HmacMD5"

.field private static final LOG_TAG:Ljava/lang/String; = "DigestAuth"

.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final MD5_SESSION:Ljava/lang/String; = "MD5-sess"

.field private static final md5:Ljava/lang/String; = "md5"


# instance fields
.field private mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

.field private mCnonce:Ljava/lang/String;

.field private mDigestURI:Ljava/lang/String;

.field private mEntity:Ljava/lang/String;

.field private mMethod:Ljava/lang/String;

.field private mNC:I

.field private mNonce:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mQOP:Ljava/lang/String;

.field private mRealm:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth;->HEXADECIMAL:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNC:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNC:I

    .line 106
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mUsername:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mPassword:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mRealm:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNonce:Ljava/lang/String;

    .line 110
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mMethod:Ljava/lang/String;

    .line 111
    iput-object p6, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mDigestURI:Ljava/lang/String;

    .line 112
    invoke-static {p7}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->getAlgoType(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    .line 113
    iput-object p8, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    .line 114
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mEntity:Ljava/lang/String;

    return-void
.end method

.method private calcResponseForMD5()Ljava/lang/String;
    .locals 5

    .line 237
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    iget v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNC:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNC:I

    .line 244
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DigestAuth;->createCnonce()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mCnonce:Ljava/lang/String;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getHexHA1(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNonce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string v3, "auth"

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "auth-int"

    iget-object v4, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getNC()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mCnonce:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getHexHA2(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->encode([B)Ljava/lang/String;

    move-result-object p0

    .line 262
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calcResponseForMD5(): contents: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", HEX RESP: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 240
    const-string p0, ""

    return-object p0
.end method

.method private calculatePasswordForAkav2()Ljava/lang/String;
    .locals 2

    .line 310
    :try_start_0
    const-string v0, "http-digest-akav2-password"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/helper/httpclient/DigestAuth;->hmacMD5([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->encode([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Hmac encryption failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static createCnonce()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x8

    .line 159
    new-array v0, v0, [B

    .line 160
    invoke-static {}, Lcom/sec/internal/ims/util/ImsUtil;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 161
    invoke-static {v0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 7

    .line 173
    array-length v0, p0

    mul-int/lit8 v1, v0, 0x2

    .line 174
    new-array v1, v1, [C

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 176
    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    mul-int/lit8 v5, v2, 0x2

    .line 178
    sget-object v6, Lcom/sec/internal/helper/httpclient/DigestAuth;->HEXADECIMAL:[C

    aget-char v3, v6, v3

    aput-char v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    .line 179
    aget-char v3, v6, v4

    aput-char v3, v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method private getEntityHash(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mEntity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/httpclient/DigestAuth;->encode([B)Ljava/lang/String;

    move-result-object p1

    .line 303
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEntityHash(): contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mEntity:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", HEX entityHash: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private getHexHA1(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 4

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v3, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->MD5_SESSION:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    if-ne v2, v3, :cond_0

    .line 275
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNonce:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mCnonce:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CP1252"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->encode([B)Ljava/lang/String;

    move-result-object p0

    .line 282
    sget-object p1, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHexHA1(): contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", HEX HA1: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getHexHA2(Ljava/security/MessageDigest;)Ljava/lang/String;
    .locals 4

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mDigestURI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    const-string v2, "auth-int"

    iget-object v3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/httpclient/DigestAuth;->getEntityHash(Ljava/security/MessageDigest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->encode([B)Ljava/lang/String;

    move-result-object p0

    .line 297
    sget-object p1, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHexHA2(): : contents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", HEX HA2: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private hmacMD5([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 318
    const-string p0, "HmacMD5"

    invoke-static {p0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 319
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, p1, p0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 320
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    invoke-virtual {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCnonce()Ljava/lang/String;
    .locals 3

    .line 195
    const-string v0, "auth"

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "auth-int"

    iget-object v1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    sget-object v0, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string p0, ""

    return-object p0

    .line 200
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mCnonce:Ljava/lang/String;

    return-object p0
.end method

.method public getDigestUri()Ljava/lang/String;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mDigestURI:Ljava/lang/String;

    return-object p0
.end method

.method public getNC()Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    new-instance v1, Ljava/util/Formatter;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 188
    iget p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNC:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "%08x"

    invoke-virtual {v1, v2, p0}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 189
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 190
    sget-object p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNC(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNonce:Ljava/lang/String;

    return-object p0
.end method

.method public getQop()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    return-object p0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mRealm:Ljava/lang/String;

    return-object p0
.end method

.method public getResp()Ljava/lang/String;
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    sget-object v1, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->AKAV2_MD5:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    if-ne v0, v1, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->calculatePasswordForAkav2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mPassword:Ljava/lang/String;

    .line 231
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/helper/httpclient/DigestAuth;->calcResponseForMD5()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mUsername:Ljava/lang/String;

    return-object p0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mEntity:Ljava/lang/String;

    return-void
.end method

.method public setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mUsername:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mPassword:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mRealm:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNonce:Ljava/lang/String;

    .line 124
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mMethod:Ljava/lang/String;

    .line 125
    iput-object p6, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mDigestURI:Ljava/lang/String;

    .line 126
    invoke-static {p7}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->getAlgoType(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    .line 127
    iput-object p8, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    .line 128
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mEntity:Ljava/lang/String;

    return-void
.end method

.method public setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mUsername:Ljava/lang/String;

    .line 135
    iput-object p2, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mPassword:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mRealm:Ljava/lang/String;

    .line 137
    iput-object p4, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mNonce:Ljava/lang/String;

    .line 138
    iput-object p5, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mMethod:Ljava/lang/String;

    .line 139
    iput-object p6, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mDigestURI:Ljava/lang/String;

    .line 140
    invoke-static {p7}, Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;->getAlgoType(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mAlgorithm:Lcom/sec/internal/helper/httpclient/DigestAuth$Algo;

    .line 141
    iput-object p8, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mQOP:Ljava/lang/String;

    .line 142
    iput-object p9, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mEntity:Ljava/lang/String;

    return-void
.end method

.method public setDigestURI(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sec/internal/helper/httpclient/DigestAuth;->mDigestURI:Ljava/lang/String;

    return-void
.end method
