.class public abstract Lokio/internal/_ByteStringKt;
.super Ljava/lang/Object;
.source "-ByteString.kt"


# static fields
.field private static final HEX_DIGIT_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    .line 58
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

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

.method public static final synthetic access$codePointIndexToCharIndex([BI)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lokio/internal/_ByteStringKt;->codePointIndexToCharIndex([BI)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$decodeHexDigit(C)I
    .locals 0

    .line 1
    invoke-static {p0}, Lokio/internal/_ByteStringKt;->decodeHexDigit(C)I

    move-result p0

    return p0
.end method

.method private static final codePointIndexToCharIndex([BI)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v3, 0x1

    .line 345
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_0
    :goto_0
    if-ge v5, v4, :cond_3d

    .line 214
    aget-byte v8, v0, v5

    const v9, 0xfffd

    const/16 v10, 0x9f

    const/16 v11, 0x7f

    const/16 v12, 0x1f

    const/16 v13, 0xd

    const/16 v14, 0xa

    const/high16 v15, 0x10000

    const/16 v16, -0x1

    if-ltz v8, :cond_b

    add-int/lit8 v17, v7, 0x1

    if-ne v7, v1, :cond_1

    return v6

    :cond_1
    if-eq v8, v14, :cond_3

    if-eq v8, v13, :cond_3

    if-ltz v8, :cond_2

    if-gt v8, v12, :cond_2

    goto :goto_1

    :cond_2
    if-gt v11, v8, :cond_3

    if-gt v8, v10, :cond_3

    goto :goto_1

    :cond_3
    if-ne v8, v9, :cond_4

    :goto_1
    return v16

    :cond_4
    if-ge v8, v15, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    const/4 v7, 0x2

    :goto_2
    add-int/2addr v6, v7

    add-int/2addr v5, v3

    :goto_3
    move/from16 v7, v17

    if-ge v5, v4, :cond_0

    .line 222
    aget-byte v8, v0, v5

    if-ltz v8, :cond_0

    add-int/2addr v5, v3

    add-int/lit8 v17, v7, 0x1

    if-ne v7, v1, :cond_6

    return v6

    :cond_6
    if-eq v8, v14, :cond_8

    if-eq v8, v13, :cond_8

    if-ltz v8, :cond_7

    if-gt v8, v12, :cond_7

    goto :goto_4

    :cond_7
    if-gt v11, v8, :cond_8

    if-gt v8, v10, :cond_8

    goto :goto_4

    :cond_8
    if-ne v8, v9, :cond_9

    :goto_4
    return v16

    :cond_9
    if-ge v8, v15, :cond_a

    move v7, v3

    goto :goto_5

    :cond_a
    const/4 v7, 0x2

    :goto_5
    add-int/2addr v6, v7

    goto :goto_3

    :cond_b
    shr-int/lit8 v2, v8, 0x5

    const/4 v15, -0x2

    const/16 v9, 0x80

    if-ne v2, v15, :cond_17

    add-int/lit8 v2, v5, 0x1

    if-gt v4, v2, :cond_d

    if-ne v7, v1, :cond_c

    return v6

    :cond_c
    return v16

    .line 403
    :cond_d
    aget-byte v2, v0, v2

    and-int/lit16 v15, v2, 0xc0

    if-ne v15, v9, :cond_15

    xor-int/lit16 v2, v2, 0xf80

    shl-int/lit8 v8, v8, 0x6

    xor-int/2addr v2, v8

    if-ge v2, v9, :cond_f

    if-ne v7, v1, :cond_e

    return v6

    :cond_e
    return v16

    :cond_f
    add-int/lit8 v8, v7, 0x1

    if-ne v7, v1, :cond_10

    return v6

    :cond_10
    if-eq v2, v14, :cond_12

    if-eq v2, v13, :cond_12

    if-ltz v2, :cond_11

    if-gt v2, v12, :cond_11

    goto :goto_6

    :cond_11
    if-gt v11, v2, :cond_12

    if-gt v2, v10, :cond_12

    goto :goto_6

    :cond_12
    const v7, 0xfffd

    if-ne v2, v7, :cond_13

    :goto_6
    return v16

    :cond_13
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_14

    move v2, v3

    goto :goto_7

    :cond_14
    const/4 v2, 0x2

    :goto_7
    add-int/2addr v6, v2

    .line 357
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v2, 0x2

    add-int/2addr v5, v2

    :goto_8
    move v7, v8

    goto/16 :goto_0

    :cond_15
    if-ne v7, v1, :cond_16

    return v6

    :cond_16
    return v16

    :cond_17
    const/4 v2, 0x2

    shr-int/lit8 v10, v8, 0x4

    const v11, 0xdfff

    const v12, 0xd800

    if-ne v10, v15, :cond_27

    add-int/lit8 v10, v5, 0x2

    if-gt v4, v10, :cond_19

    if-ne v7, v1, :cond_18

    return v6

    :cond_18
    return v16

    :cond_19
    add-int/lit8 v2, v5, 0x1

    .line 453
    aget-byte v2, v0, v2

    and-int/lit16 v15, v2, 0xc0

    if-ne v15, v9, :cond_25

    .line 458
    aget-byte v10, v0, v10

    and-int/lit16 v15, v10, 0xc0

    if-ne v15, v9, :cond_23

    const v9, -0x1e080

    xor-int/2addr v9, v10

    shl-int/lit8 v2, v2, 0x6

    xor-int/2addr v2, v9

    shl-int/lit8 v8, v8, 0xc

    xor-int/2addr v2, v8

    const/16 v8, 0x800

    if-ge v2, v8, :cond_1b

    if-ne v7, v1, :cond_1a

    return v6

    :cond_1a
    return v16

    :cond_1b
    if-gt v12, v2, :cond_1d

    if-gt v2, v11, :cond_1d

    if-ne v7, v1, :cond_1c

    return v6

    :cond_1c
    return v16

    :cond_1d
    add-int/lit8 v8, v7, 0x1

    if-ne v7, v1, :cond_1e

    return v6

    :cond_1e
    if-eq v2, v14, :cond_20

    if-eq v2, v13, :cond_20

    if-ltz v2, :cond_1f

    const/16 v7, 0x1f

    if-gt v2, v7, :cond_1f

    goto :goto_9

    :cond_1f
    const/16 v7, 0x7f

    if-gt v7, v2, :cond_20

    const/16 v7, 0x9f

    if-gt v2, v7, :cond_20

    goto :goto_9

    :cond_20
    const v7, 0xfffd

    if-ne v2, v7, :cond_21

    :goto_9
    return v16

    :cond_21
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_22

    move v2, v3

    goto :goto_a

    :cond_22
    const/4 v2, 0x2

    :goto_a
    add-int/2addr v6, v2

    .line 357
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x3

    goto :goto_8

    :cond_23
    if-ne v7, v1, :cond_24

    return v6

    :cond_24
    return v16

    :cond_25
    if-ne v7, v1, :cond_26

    return v6

    :cond_26
    return v16

    :cond_27
    shr-int/lit8 v2, v8, 0x3

    if-ne v2, v15, :cond_3b

    add-int/lit8 v2, v5, 0x3

    if-gt v4, v2, :cond_29

    if-ne v7, v1, :cond_28

    return v6

    :cond_28
    return v16

    :cond_29
    add-int/lit8 v10, v5, 0x1

    .line 517
    aget-byte v10, v0, v10

    and-int/lit16 v15, v10, 0xc0

    if-ne v15, v9, :cond_39

    const/4 v15, 0x2

    add-int/lit8 v17, v5, 0x2

    .line 522
    aget-byte v15, v0, v17

    and-int/lit16 v13, v15, 0xc0

    if-ne v13, v9, :cond_37

    .line 527
    aget-byte v2, v0, v2

    and-int/lit16 v13, v2, 0xc0

    if-ne v13, v9, :cond_35

    const v9, 0x381f80

    xor-int/2addr v2, v9

    shl-int/lit8 v9, v15, 0x6

    xor-int/2addr v2, v9

    shl-int/lit8 v9, v10, 0xc

    xor-int/2addr v2, v9

    shl-int/lit8 v8, v8, 0x12

    xor-int/2addr v2, v8

    const v8, 0x10ffff

    if-le v2, v8, :cond_2b

    if-ne v7, v1, :cond_2a

    return v6

    :cond_2a
    return v16

    :cond_2b
    if-gt v12, v2, :cond_2d

    if-gt v2, v11, :cond_2d

    if-ne v7, v1, :cond_2c

    return v6

    :cond_2c
    return v16

    :cond_2d
    const/high16 v8, 0x10000

    if-ge v2, v8, :cond_2f

    if-ne v7, v1, :cond_2e

    return v6

    :cond_2e
    return v16

    :cond_2f
    add-int/lit8 v8, v7, 0x1

    if-ne v7, v1, :cond_30

    return v6

    :cond_30
    if-eq v2, v14, :cond_32

    const/16 v7, 0xd

    if-eq v2, v7, :cond_32

    if-ltz v2, :cond_31

    const/16 v7, 0x1f

    if-gt v2, v7, :cond_31

    goto :goto_b

    :cond_31
    const/16 v7, 0x7f

    if-gt v7, v2, :cond_32

    const/16 v7, 0x9f

    if-gt v2, v7, :cond_32

    goto :goto_b

    :cond_32
    const v7, 0xfffd

    if-ne v2, v7, :cond_33

    :goto_b
    return v16

    :cond_33
    const/high16 v7, 0x10000

    if-ge v2, v7, :cond_34

    move v2, v3

    goto :goto_c

    :cond_34
    const/4 v2, 0x2

    :goto_c
    add-int/2addr v6, v2

    .line 357
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_8

    :cond_35
    if-ne v7, v1, :cond_36

    return v6

    :cond_36
    return v16

    :cond_37
    if-ne v7, v1, :cond_38

    return v6

    :cond_38
    return v16

    :cond_39
    if-ne v7, v1, :cond_3a

    return v6

    :cond_3a
    return v16

    :cond_3b
    if-ne v7, v1, :cond_3c

    return v6

    :cond_3c
    return v16

    :cond_3d
    return v6
.end method

.method public static final commonWrite(Lokio/ByteString;Lokio/Buffer;II)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lokio/ByteString;->getData$okio()[B

    move-result-object p0

    invoke-virtual {p1, p0, p2, p3}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    return-void
.end method

.method private static final decodeHexDigit(C)I
    .locals 2

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    sub-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x57

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 p0, p0, -0x37

    :goto_0
    return p0

    .line 313
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    const-string v1, "Unexpected hex digit: "

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getHEX_DIGIT_CHARS()[C
    .locals 1

    .line 57
    sget-object v0, Lokio/internal/_ByteStringKt;->HEX_DIGIT_CHARS:[C

    return-object v0
.end method
