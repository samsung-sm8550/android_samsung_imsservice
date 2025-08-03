.class public Lcom/sec/internal/ims/config/util/Fips186_2;
.super Ljava/lang/Object;
.source "Fips186_2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fips186_2_prf2([B[B)I
    .locals 9

    .line 15
    invoke-static {p0}, Lcom/sec/internal/ims/config/util/Fips186_2;->fromByteArray([B)Ljava/math/BigInteger;

    move-result-object v0

    .line 16
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 17
    array-length p1, p1

    div-int/lit8 p1, p1, 0x28

    .line 19
    new-instance v2, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {v2}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    .line 20
    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "2"

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    move v5, v3

    :goto_1
    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    const/16 v6, 0x14

    .line 31
    invoke-static {v0, v6}, Lcom/sec/internal/ims/config/util/Fips186_2;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v7

    const/16 v8, 0x40

    .line 33
    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 34
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 40
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 41
    iget v8, v2, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    iget v8, v2, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    iget v8, v2, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    iget v8, v2, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    iget v2, v2, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 47
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/config/util/Fips186_2;->fromByteArray([B)Ljava/math/BigInteger;

    move-result-object v2

    .line 49
    new-instance v7, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {v7}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    .line 52
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 53
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 59
    invoke-static {v2, v6}, Lcom/sec/internal/ims/config/util/Fips186_2;->toByteArray(Ljava/math/BigInteger;I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    move-object v2, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method static fromByteArray([B)Ljava/math/BigInteger;
    .locals 4

    .line 98
    array-length v0, p0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 99
    array-length v2, p0

    const/4 v3, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    aput-byte v3, v0, v3

    .line 101
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object p0
.end method

.method static toByteArray(Ljava/math/BigInteger;I)[B
    .locals 3

    .line 76
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 78
    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    .line 81
    :cond_0
    array-length v0, p0

    if-le v0, p1, :cond_1

    .line 82
    array-length v0, p0

    sub-int/2addr v0, p1

    array-length p1, p0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    .line 85
    :cond_1
    new-array v0, p1, [B

    .line 86
    array-length v1, p0

    sub-int/2addr p1, v1

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
