.class public Lorg/xbill/DNS/utils/base32;
.super Ljava/lang/Object;
.source "base32.java"


# instance fields
.field private alphabet:Ljava/lang/String;

.field private lowercase:Z

.field private padding:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Lorg/xbill/DNS/utils/base32;->padding:Z

    .line 40
    iput-boolean p3, p0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    return-void
.end method

.method private static blockLenToPadding(I)I
    .locals 3

    .line 0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    if-eq p0, v2, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public toString([B)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 87
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 89
    :goto_0
    array-length v5, v1

    const/4 v6, 0x4

    add-int/2addr v5, v6

    const/4 v7, 0x5

    div-int/2addr v5, v7

    if-ge v4, v5, :cond_5

    .line 90
    new-array v5, v7, [S

    move v8, v3

    move v9, v7

    :goto_1
    if-ge v8, v7, :cond_1

    mul-int/lit8 v10, v4, 0x5

    add-int/2addr v10, v8

    .line 95
    array-length v11, v1

    if-ge v10, v11, :cond_0

    .line 96
    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v5, v8

    goto :goto_2

    .line 98
    :cond_0
    aput-short v3, v5, v8

    add-int/lit8 v9, v9, -0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 102
    :cond_1
    invoke-static {v9}, Lorg/xbill/DNS/utils/base32;->blockLenToPadding(I)I

    move-result v7

    .line 107
    aget-short v8, v5, v3

    shr-int/lit8 v9, v8, 0x3

    and-int/lit8 v9, v9, 0x1f

    int-to-byte v10, v9

    and-int/lit8 v8, v8, 0x7

    const/4 v9, 0x2

    shl-int/2addr v8, v9

    const/4 v11, 0x1

    .line 109
    aget-short v12, v5, v11

    shr-int/lit8 v13, v12, 0x6

    const/4 v14, 0x3

    and-int/2addr v13, v14

    or-int/2addr v8, v13

    int-to-byte v8, v8

    shr-int/lit8 v13, v12, 0x1

    and-int/lit8 v13, v13, 0x1f

    int-to-byte v13, v13

    and-int/2addr v12, v11

    shl-int/2addr v12, v6

    .line 113
    aget-short v9, v5, v9

    shr-int/lit8 v15, v9, 0x4

    and-int/lit8 v15, v15, 0xf

    or-int/2addr v12, v15

    int-to-byte v15, v12

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v11

    .line 115
    aget-short v12, v5, v14

    shr-int/lit8 v16, v12, 0x7

    and-int/lit8 v11, v16, 0x1

    or-int/2addr v9, v11

    int-to-byte v9, v9

    shr-int/lit8 v11, v12, 0x2

    and-int/lit8 v11, v11, 0x1f

    int-to-byte v11, v11

    and-int/2addr v12, v14

    shl-int/2addr v12, v14

    .line 119
    aget-short v5, v5, v6

    shr-int/lit8 v6, v5, 0x5

    and-int/lit8 v6, v6, 0x7

    or-int/2addr v6, v12

    int-to-byte v6, v6

    and-int/lit8 v5, v5, 0x1f

    int-to-byte v5, v5

    move/from16 v16, v11

    move v11, v8

    move v12, v13

    move v13, v15

    move v14, v9

    move/from16 v15, v16

    move/from16 v16, v6

    move/from16 v17, v5

    .line 121
    filled-new-array/range {v10 .. v17}, [I

    move-result-object v5

    move v6, v3

    :goto_3
    const/16 v8, 0x8

    rsub-int/lit8 v9, v7, 0x8

    if-ge v6, v9, :cond_3

    .line 125
    iget-object v8, v0, Lorg/xbill/DNS/utils/base32;->alphabet:Ljava/lang/String;

    aget v9, v5, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 126
    iget-boolean v9, v0, Lorg/xbill/DNS/utils/base32;->lowercase:Z

    if-eqz v9, :cond_2

    .line 127
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    .line 128
    :cond_2
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 132
    :cond_3
    iget-boolean v5, v0, Lorg/xbill/DNS/utils/base32;->padding:Z

    if-eqz v5, :cond_4

    :goto_4
    if-ge v9, v8, :cond_4

    const/16 v5, 0x3d

    .line 134
    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 138
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
