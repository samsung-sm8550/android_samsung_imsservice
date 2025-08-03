.class public Lcom/sec/internal/ims/config/util/SHA1;
.super Ljava/lang/Object;
.source "SHA1.java"


# instance fields
.field protected H0:I

.field protected H1:I

.field protected H2:I

.field protected H3:I

.field protected H4:I

.field private currentLen:J

.field private currentPos:I

.field private final w:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    .line 6
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    .line 11
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/util/SHA1;->reset()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 580
    new-instance p0, Lcom/sec/internal/ims/config/util/SHA1;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;-><init>()V

    const/16 v0, 0x14

    .line 582
    new-array v1, v0, [B

    .line 583
    new-array v2, v0, [B

    .line 584
    new-array v0, v0, [B

    .line 595
    const-string v3, "abc"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 596
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    .line 598
    const-string v3, "abcdbcdecdefdefgefghfghighijhijkijkljklmklmnlmnomnopnopq"

    .line 599
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 598
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/util/SHA1;->update([B)V

    .line 600
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    const/4 v3, 0x0

    :goto_0
    const v4, 0xf4240

    if-ge v3, v4, :cond_0

    const/16 v4, 0x61

    .line 603
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/util/SHA1;->update(B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 604
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/util/SHA1;->digest([B)V

    .line 606
    invoke-static {v1}, Lcom/sec/internal/ims/config/util/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .line 607
    invoke-static {v2}, Lcom/sec/internal/ims/config/util/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 608
    invoke-static {v0}, Lcom/sec/internal/ims/config/util/SHA1;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 614
    const-string v2, "A9993E364706816ABA3E25717850C26C9CD0D89D"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 615
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SHA-1 Test 1 OK."

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "SHA-1 Test 1 FAILED."

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 619
    :goto_1
    const-string p0, "84983E441C3BD26EBAAE4AA1F95129E5E54670F1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 620
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHA-1 Test 2 OK."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 622
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SHA-1 Test 2 FAILED."

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 624
    :goto_2
    const-string p0, "34AA973CD4C4DAA4F61EEB2BDBAD27316534016F"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SHA-1 Test 3 FAILED."

    const-string v3, "SHA-1 Test 3 OK."

    if-eqz v1, :cond_3

    .line 625
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 627
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 629
    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 630
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 632
    :cond_4
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method private final perform()V
    .locals 17

    move-object/from16 v0, p0

    const/16 v2, 0x10

    :goto_0
    const/16 v3, 0x50

    const/16 v4, 0x1f

    if-ge v2, v3, :cond_0

    .line 192
    iget-object v3, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    add-int/lit8 v5, v2, -0x3

    aget v5, v3, v5

    add-int/lit8 v6, v2, -0x8

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0xe

    aget v6, v3, v6

    xor-int/2addr v5, v6

    add-int/lit8 v6, v2, -0x10

    aget v6, v3, v6

    xor-int/2addr v5, v6

    shl-int/lit8 v6, v5, 0x1

    ushr-int/lit8 v4, v5, 0x1f

    or-int/2addr v4, v6

    .line 194
    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    iget v2, v0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    .line 198
    iget v3, v0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    .line 199
    iget v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    .line 200
    iget v6, v0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    .line 201
    iget v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    and-int v9, v3, v5

    not-int v10, v3

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    add-int/2addr v8, v9

    .line 282
    iget-object v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    const/4 v10, 0x0

    aget v10, v9, v10

    add-int/2addr v8, v10

    const v10, 0x5a827999

    add-int/2addr v8, v10

    add-int/2addr v8, v7

    shl-int/lit8 v11, v3, 0x1e

    ushr-int/lit8 v12, v3, 0x2

    or-int/2addr v11, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v13, v8, 0x1b

    or-int/2addr v12, v13

    and-int v13, v2, v11

    not-int v14, v2

    and-int/2addr v14, v5

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x1

    .line 286
    aget v13, v9, v13

    add-int/2addr v12, v13

    add-int/2addr v12, v10

    add-int/2addr v12, v6

    shl-int/lit8 v13, v2, 0x1e

    ushr-int/lit8 v14, v2, 0x2

    or-int/2addr v13, v14

    shl-int/lit8 v14, v12, 0x5

    ushr-int/lit8 v15, v12, 0x1b

    or-int/2addr v14, v15

    and-int v15, v8, v13

    not-int v4, v8

    and-int/2addr v4, v11

    or-int/2addr v4, v15

    add-int/2addr v14, v4

    const/4 v4, 0x2

    .line 290
    aget v15, v9, v4

    add-int/2addr v14, v15

    add-int/2addr v14, v10

    add-int/2addr v14, v5

    shl-int/lit8 v15, v8, 0x1e

    ushr-int/2addr v8, v4

    or-int/2addr v8, v15

    shl-int/lit8 v15, v14, 0x5

    ushr-int/lit8 v16, v14, 0x1b

    or-int v15, v15, v16

    and-int v16, v12, v8

    not-int v1, v12

    and-int/2addr v1, v13

    or-int v1, v16, v1

    add-int/2addr v15, v1

    const/4 v1, 0x3

    .line 294
    aget v1, v9, v1

    add-int/2addr v15, v1

    add-int/2addr v15, v10

    add-int/2addr v11, v15

    shl-int/lit8 v1, v12, 0x1e

    ushr-int/2addr v12, v4

    or-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v15, v11, 0x1b

    or-int/2addr v12, v15

    and-int v15, v14, v1

    not-int v4, v14

    and-int/2addr v4, v8

    or-int/2addr v4, v15

    add-int/2addr v12, v4

    const/4 v4, 0x4

    .line 298
    aget v4, v9, v4

    add-int/2addr v12, v4

    add-int/2addr v12, v10

    add-int/2addr v13, v12

    shl-int/lit8 v4, v14, 0x1e

    const/4 v12, 0x2

    ushr-int/2addr v14, v12

    or-int/2addr v4, v14

    shl-int/lit8 v12, v13, 0x5

    ushr-int/lit8 v14, v13, 0x1b

    or-int/2addr v12, v14

    and-int v14, v11, v4

    not-int v15, v11

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/4 v14, 0x5

    .line 302
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v10

    add-int/2addr v8, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    and-int v14, v13, v11

    not-int v15, v13

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/4 v14, 0x6

    .line 306
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v10

    add-int/2addr v1, v12

    shl-int/lit8 v12, v13, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v13, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v12

    not-int v15, v8

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/4 v14, 0x7

    .line 310
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v4, v13

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v8

    not-int v15, v1

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x8

    .line 314
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x9

    .line 318
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v11, v4

    not-int v15, v11

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xa

    .line 322
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    shl-int/lit8 v13, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v11

    not-int v15, v12

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xb

    .line 326
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v1, v13

    shl-int/lit8 v13, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v12

    not-int v15, v8

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xc

    .line 330
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v4, v13

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v8

    not-int v15, v1

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xd

    .line 334
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xe

    .line 338
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    shl-int/lit8 v13, v12, 0x5

    ushr-int/lit8 v14, v12, 0x1b

    or-int/2addr v13, v14

    and-int v14, v11, v4

    not-int v15, v11

    and-int/2addr v15, v1

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0xf

    .line 342
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v8, v13

    shl-int/lit8 v13, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v13

    shl-int/lit8 v13, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v13, v14

    and-int v14, v12, v11

    not-int v15, v12

    and-int/2addr v15, v4

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x10

    .line 346
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v1, v13

    shl-int/lit8 v13, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v12, v13

    shl-int/lit8 v13, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v13, v14

    and-int v14, v8, v12

    not-int v15, v8

    and-int/2addr v15, v11

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x11

    .line 350
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v4, v13

    shl-int/lit8 v13, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v13

    shl-int/lit8 v13, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v13, v14

    and-int v14, v1, v8

    not-int v15, v1

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x12

    .line 354
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v11, v13

    shl-int/lit8 v13, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v13

    shl-int/lit8 v13, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v13, v14

    and-int v14, v4, v1

    not-int v15, v4

    and-int/2addr v15, v8

    or-int/2addr v14, v15

    add-int/2addr v13, v14

    const/16 v14, 0x13

    .line 358
    aget v14, v9, v14

    add-int/2addr v13, v14

    add-int/2addr v13, v10

    add-int/2addr v12, v13

    shl-int/lit8 v10, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v10

    shl-int/lit8 v10, v12, 0x5

    ushr-int/lit8 v13, v12, 0x1b

    or-int/2addr v10, v13

    xor-int v13, v11, v4

    xor-int/2addr v13, v1

    add-int/2addr v10, v13

    const/16 v13, 0x14

    .line 362
    aget v13, v9, v13

    add-int/2addr v10, v13

    const v13, 0x6ed9eba1

    add-int/2addr v10, v13

    add-int/2addr v8, v10

    shl-int/lit8 v10, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v10, v11

    shl-int/lit8 v11, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v11, v14

    xor-int v14, v12, v10

    xor-int/2addr v14, v4

    add-int/2addr v11, v14

    const/16 v14, 0x15

    .line 365
    aget v14, v9, v14

    add-int/2addr v11, v14

    add-int/2addr v11, v13

    add-int/2addr v1, v11

    shl-int/lit8 v11, v12, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v12, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x16

    .line 368
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x17

    .line 371
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x18

    .line 374
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x19

    .line 377
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x1a

    .line 380
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x1b

    .line 383
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x1c

    .line 386
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x1d

    .line 389
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x1e

    .line 392
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x1f

    .line 395
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x20

    .line 398
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x21

    .line 401
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x22

    .line 404
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x23

    .line 407
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x24

    .line 410
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x25

    .line 413
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x26

    .line 416
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x27

    .line 419
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    or-int v13, v4, v1

    and-int/2addr v13, v10

    and-int v14, v4, v1

    or-int/2addr v13, v14

    add-int/2addr v12, v13

    const/16 v13, 0x28

    .line 422
    aget v13, v9, v13

    add-int/2addr v12, v13

    const v13, -0x70e44324

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    or-int v14, v10, v4

    and-int/2addr v14, v11

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x29

    .line 426
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    or-int v14, v11, v10

    and-int/2addr v14, v8

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2a

    .line 430
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    or-int v14, v8, v11

    and-int/2addr v14, v1

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2b

    .line 434
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    or-int v14, v1, v8

    and-int/2addr v14, v4

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2c

    .line 438
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    or-int v14, v4, v1

    and-int/2addr v14, v10

    and-int v15, v4, v1

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2d

    .line 442
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    or-int v14, v10, v4

    and-int/2addr v14, v11

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2e

    .line 446
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    or-int v14, v11, v10

    and-int/2addr v14, v8

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x2f

    .line 450
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    or-int v14, v8, v11

    and-int/2addr v14, v1

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x30

    .line 454
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    or-int v14, v1, v8

    and-int/2addr v14, v4

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x31

    .line 458
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    or-int v14, v4, v1

    and-int/2addr v14, v10

    and-int v15, v4, v1

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x32

    .line 462
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    or-int v14, v10, v4

    and-int/2addr v14, v11

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x33

    .line 466
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    or-int v14, v11, v10

    and-int/2addr v14, v8

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x34

    .line 470
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    or-int v14, v8, v11

    and-int/2addr v14, v1

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x35

    .line 474
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    or-int v14, v1, v8

    and-int/2addr v14, v4

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x36

    .line 478
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    add-int/2addr v8, v12

    or-int v12, v4, v1

    and-int/2addr v12, v10

    and-int v14, v4, v1

    or-int/2addr v12, v14

    add-int/2addr v8, v12

    const/16 v12, 0x37

    .line 482
    aget v12, v9, v12

    add-int/2addr v8, v12

    add-int/2addr v8, v13

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    or-int v14, v10, v4

    and-int/2addr v14, v11

    and-int v15, v10, v4

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x38

    .line 486
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    or-int v14, v11, v10

    and-int/2addr v14, v8

    and-int v15, v11, v10

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x39

    .line 490
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    or-int v14, v8, v11

    and-int/2addr v14, v1

    and-int v15, v8, v11

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x3a

    .line 494
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    or-int v14, v1, v8

    and-int/2addr v14, v4

    and-int v15, v1, v8

    or-int/2addr v14, v15

    add-int/2addr v12, v14

    const/16 v14, 0x3b

    .line 498
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v13, 0x2

    ushr-int/2addr v4, v13

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v13, v11, 0x1b

    or-int/2addr v12, v13

    xor-int v13, v10, v4

    xor-int/2addr v13, v1

    add-int/2addr v12, v13

    const/16 v13, 0x3c

    .line 502
    aget v13, v9, v13

    add-int/2addr v12, v13

    const v13, -0x359d3e2a    # -3715189.5f

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x3d

    .line 505
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x3e

    .line 508
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x3f

    .line 511
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x40

    .line 514
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x41

    .line 517
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x42

    .line 520
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x43

    .line 523
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x44

    .line 526
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x45

    .line 529
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x46

    .line 532
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x47

    .line 535
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x48

    .line 538
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x49

    .line 541
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x4a

    .line 544
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v12, v4, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v4, v14

    or-int/2addr v4, v12

    shl-int/lit8 v12, v11, 0x5

    ushr-int/lit8 v14, v11, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v10, v4

    xor-int/2addr v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0x4b

    .line 547
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v8, v12

    shl-int/lit8 v12, v10, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v10, v14

    or-int/2addr v10, v12

    shl-int/lit8 v12, v8, 0x5

    ushr-int/lit8 v14, v8, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v11, v10

    xor-int/2addr v14, v4

    add-int/2addr v12, v14

    const/16 v14, 0x4c

    .line 550
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    shl-int/lit8 v12, v11, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v11, v14

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x5

    ushr-int/lit8 v14, v1, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v8, v11

    xor-int/2addr v14, v10

    add-int/2addr v12, v14

    const/16 v14, 0x4d

    .line 553
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v4, v12

    shl-int/lit8 v12, v8, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v8, v14

    or-int/2addr v8, v12

    shl-int/lit8 v12, v4, 0x5

    ushr-int/lit8 v14, v4, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v1, v8

    xor-int/2addr v14, v11

    add-int/2addr v12, v14

    const/16 v14, 0x4e

    .line 556
    aget v14, v9, v14

    add-int/2addr v12, v14

    add-int/2addr v12, v13

    add-int/2addr v10, v12

    shl-int/lit8 v12, v1, 0x1e

    const/4 v14, 0x2

    ushr-int/2addr v1, v14

    or-int/2addr v1, v12

    shl-int/lit8 v12, v10, 0x5

    ushr-int/lit8 v14, v10, 0x1b

    or-int/2addr v12, v14

    xor-int v14, v4, v1

    xor-int/2addr v14, v8

    add-int/2addr v12, v14

    const/16 v14, 0x4f

    .line 559
    aget v9, v9, v14

    add-int/2addr v12, v9

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    shl-int/lit8 v9, v4, 0x1e

    const/4 v12, 0x2

    ushr-int/2addr v4, v12

    or-int/2addr v4, v9

    add-int/2addr v2, v11

    .line 562
    iput v2, v0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    add-int/2addr v3, v10

    .line 563
    iput v3, v0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    add-int/2addr v5, v4

    .line 564
    iput v5, v0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    add-int/2addr v6, v1

    .line 565
    iput v6, v0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    add-int/2addr v7, v8

    .line 566
    iput v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    return-void
.end method

.method private final putInt([BII)V
    .locals 1

    shr-int/lit8 p0, p3, 0x18

    int-to-byte p0, p0

    .line 145
    aput-byte p0, p1, p2

    add-int/lit8 p0, p2, 0x1

    shr-int/lit8 v0, p3, 0x10

    int-to-byte v0, v0

    .line 146
    aput-byte v0, p1, p0

    add-int/lit8 p0, p2, 0x2

    shr-int/lit8 v0, p3, 0x8

    int-to-byte v0, v0

    .line 147
    aput-byte v0, p1, p0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p3

    .line 148
    aput-byte p0, p1, p2

    return-void
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 4

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 572
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 573
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 574
    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final digest([B)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/config/util/SHA1;->digest([BI)V

    return-void
.end method

.method public final digest([BI)V
    .locals 8

    .line 157
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 158
    iget-object v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    or-int/lit16 v3, v3, 0x80

    and-int/lit8 v4, v0, 0x3

    rsub-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x3

    shl-int/2addr v3, v4

    aput v3, v2, v1

    and-int/lit8 v0, v0, -0x4

    add-int/lit8 v0, v0, 0x4

    .line 160
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    const/16 v1, 0x40

    const/16 v3, 0xf

    const/4 v4, 0x0

    if-ne v0, v1, :cond_0

    .line 163
    iput v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 164
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    .line 166
    iput v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 167
    aput v4, v2, v3

    .line 168
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 175
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v0, v0, 0x2

    :goto_1
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    iget-wide v4, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const/16 v2, 0x20

    shr-long v6, v4, v2

    long-to-int v2, v6

    aput v2, v0, v1

    long-to-int v1, v4

    .line 179
    aput v1, v0, v3

    .line 181
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 183
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x4

    .line 184
    iget v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0x8

    .line 185
    iget v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    add-int/lit8 v0, p2, 0xc

    .line 186
    iget v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    add-int/lit8 p2, p2, 0x10

    .line 187
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/util/SHA1;->putInt([BII)V

    return-void
.end method

.method public final reset()V
    .locals 2

    const v0, 0x67452301

    .line 15
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H0:I

    const v0, -0x10325477

    .line 16
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H1:I

    const v0, -0x67452302

    .line 17
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H2:I

    const v0, 0x10325476

    .line 18
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H3:I

    const v0, -0x3c2d1e10

    .line 19
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->H4:I

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    return-void
.end method

.method public final update(B)V
    .locals 5

    .line 132
    iget v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v1, v0, 0x2

    .line 133
    iget-object v2, p0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v3, v2, v1

    shl-int/lit8 v3, v3, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v3

    aput p1, v2, v1

    .line 135
    iget-wide v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v3, 0x8

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    add-int/lit8 v0, v0, 0x1

    .line 136
    iput v0, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    const/16 p1, 0x40

    if-ne v0, p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    :cond_0
    return-void
.end method

.method public final update([B)V
    .locals 2

    .line 31
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/internal/ims/config/util/SHA1;->update([BII)V

    return-void
.end method

.method public final update([BII)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    const/16 v5, 0x40

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-lt v1, v8, :cond_9

    .line 36
    iget v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    and-int/lit8 v11, v9, 0x3

    if-eqz v11, :cond_5

    const/4 v12, 0x3

    if-eq v11, v7, :cond_3

    const/4 v13, 0x2

    if-eq v11, v13, :cond_1

    if-eq v11, v12, :cond_0

    move/from16 v13, p2

    goto/16 :goto_0

    .line 75
    :cond_0
    iget-object v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/2addr v12, v6

    add-int/lit8 v13, p2, 0x1

    aget-byte v14, p1, p2

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v12, v14

    aput v12, v11, v10

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v9, v7

    .line 77
    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 78
    iget-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    add-long/2addr v10, v2

    iput-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    if-ne v9, v5, :cond_6

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 81
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    goto/16 :goto_0

    .line 64
    :cond_1
    iget-object v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v12, v11, v10

    shl-int/lit8 v12, v12, 0x10

    add-int/lit8 v14, p2, 0x1

    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    add-int/lit8 v16, p2, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    or-int/2addr v14, v15

    or-int/2addr v12, v14

    aput v12, v11, v10

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v9, v13

    .line 67
    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 68
    iget-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v12, 0x10

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    if-ne v9, v5, :cond_2

    .line 70
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 71
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    :cond_2
    move/from16 v13, v16

    goto :goto_0

    .line 52
    :cond_3
    iget-object v11, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v13, v11, v10

    shl-int/lit8 v13, v13, 0x18

    add-int/lit8 v14, p2, 0x1

    aget-byte v15, p1, p2

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x10

    add-int/lit8 v16, p2, 0x2

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    or-int/2addr v14, v15

    add-int/lit8 v15, p2, 0x3

    aget-byte v7, p1, v16

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v14

    or-int/2addr v7, v13

    aput v7, v11, v10

    add-int/lit8 v1, v1, -0x3

    add-int/2addr v9, v12

    .line 56
    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 57
    iget-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v12, 0x18

    add-long/2addr v10, v12

    iput-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    if-ne v9, v5, :cond_4

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 60
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    :cond_4
    move v13, v15

    goto :goto_0

    .line 40
    :cond_5
    iget-object v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    add-int/lit8 v11, p2, 0x1

    aget-byte v12, p1, p2

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v13, p2, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, p2, 0x3

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    shl-int/2addr v13, v6

    or-int/2addr v11, v13

    add-int/lit8 v13, p2, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/lit8 v1, v1, -0x4

    add-int/2addr v9, v8

    .line 44
    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 45
    iget-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v14, 0x20

    add-long/2addr v10, v14

    iput-wide v10, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    if-ne v9, v5, :cond_6

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 48
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    :cond_6
    :goto_0
    if-lt v1, v6, :cond_a

    .line 88
    iget-object v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    iget v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v13, 0x1

    aget-byte v12, p1, v13

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v14, v13, 0x2

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x3

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    or-int/2addr v11, v14

    add-int/lit8 v14, v13, 0x4

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/2addr v9, v8

    .line 91
    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    if-ne v9, v5, :cond_7

    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 95
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 98
    :cond_7
    iget-object v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    iget v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v10, v9, 0x2

    add-int/lit8 v11, v13, 0x5

    aget-byte v12, p1, v14

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    add-int/lit8 v14, v13, 0x6

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v13, 0x7

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    or-int/2addr v11, v14

    add-int/lit8 v13, v13, 0x8

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    aput v11, v7, v10

    add-int/2addr v9, v8

    .line 102
    iput v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    if-ne v9, v5, :cond_8

    .line 105
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 106
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    .line 109
    :cond_8
    iget-wide v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const-wide/16 v11, 0x40

    add-long/2addr v9, v11

    iput-wide v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    :cond_9
    move/from16 v13, p2

    :cond_a
    :goto_1
    if-lez v1, :cond_c

    .line 117
    iget v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    shr-int/lit8 v8, v7, 0x2

    .line 118
    iget-object v9, v0, Lcom/sec/internal/ims/config/util/SHA1;->w:[I

    aget v10, v9, v8

    shl-int/2addr v10, v6

    add-int/lit8 v11, v13, 0x1

    aget-byte v12, p1, v13

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v10, v12

    aput v10, v9, v8

    .line 120
    iget-wide v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    add-long/2addr v8, v2

    iput-wide v8, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentLen:J

    const/4 v8, 0x1

    add-int/2addr v7, v8

    .line 121
    iput v7, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    if-ne v7, v5, :cond_b

    .line 124
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/util/SHA1;->perform()V

    .line 125
    iput v4, v0, Lcom/sec/internal/ims/config/util/SHA1;->currentPos:I

    :cond_b
    add-int/lit8 v1, v1, -0x1

    move v13, v11

    goto :goto_1

    :cond_c
    return-void
.end method
