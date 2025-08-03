.class public Lorg/xbill/DNS/DNSOutput;
.super Ljava/lang/Object;
.source "DNSOutput.java"


# instance fields
.field private array:[B

.field private pos:I

.field private saved_pos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 34
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array p1, p1, [B

    iput-object p1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    const/4 p1, -0x1

    .line 26
    iput p1, p0, Lorg/xbill/DNS/DNSOutput;->saved_pos:I

    return-void
.end method

.method private check(JI)V
    .locals 4

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long p0, p1, v2

    if-ltz p0, :cond_0

    cmp-long p0, p1, v0

    if-gtz p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string p1, " out of range for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " bit value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private need(I)V
    .locals 4

    .line 57
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    array-length v1, v0

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    sub-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    return-void

    .line 60
    :cond_0
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    add-int v3, v2, p1

    if-ge v1, v3, :cond_1

    add-int v1, v2, p1

    .line 64
    :cond_1
    new-array p1, v1, [B

    const/4 v1, 0x0

    .line 65
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iput-object p1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    return-void
.end method


# virtual methods
.method public current()I
    .locals 0

    .line 42
    iget p0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    return p0
.end method

.method public toByteArray()[B
    .locals 3

    .line 198
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    new-array v1, v0, [B

    .line 199
    iget-object p0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public writeByteArray([B)V
    .locals 2

    .line 175
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    return-void
.end method

.method public writeByteArray([BII)V
    .locals 2

    .line 164
    invoke-direct {p0, p3}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 165
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    iget p1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    return-void
.end method

.method public writeCountedString([B)V
    .locals 4

    .line 185
    array-length v0, p1

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    .line 188
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 189
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    array-length v3, p1

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    const/4 v0, 0x0

    .line 190
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/xbill/DNS/DNSOutput;->writeByteArray([BII)V

    return-void

    .line 186
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid counted string"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeU16(I)V
    .locals 5

    int-to-long v0, p1

    const/16 v2, 0x10

    .line 121
    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    const/4 v0, 0x2

    .line 122
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 123
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/2addr v2, v0

    .line 124
    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    return-void
.end method

.method public writeU16At(II)V
    .locals 3

    int-to-long v0, p1

    const/16 v2, 0x10

    .line 134
    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    .line 135
    iget v0, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v0, v0, -0x2

    if-gt p2, v0, :cond_0

    .line 138
    iget-object p0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, p2

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 139
    aput-byte p1, p0, v0

    return-void

    .line 136
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot write past end of data"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeU32(J)V
    .locals 10

    const/16 v0, 0x20

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    const/4 v0, 0x4

    .line 149
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 150
    iget-object v1, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v4, v2, 0x2

    const/16 v5, 0x10

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    .line 151
    aput-byte v5, v1, v3

    add-int/lit8 v3, v2, 0x3

    const/16 v5, 0x8

    ushr-long v8, p1, v5

    and-long/2addr v8, v6

    long-to-int v5, v8

    int-to-byte v5, v5

    .line 152
    aput-byte v5, v1, v4

    add-int/2addr v2, v0

    .line 153
    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-long p0, p1, v6

    long-to-int p0, p0

    int-to-byte p0, p0

    aput-byte p0, v1, v3

    return-void
.end method

.method public writeU8(I)V
    .locals 3

    int-to-long v0, p1

    const/16 v2, 0x8

    .line 110
    invoke-direct {p0, v0, v1, v2}, Lorg/xbill/DNS/DNSOutput;->check(JI)V

    const/4 v0, 0x1

    .line 111
    invoke-direct {p0, v0}, Lorg/xbill/DNS/DNSOutput;->need(I)V

    .line 112
    iget-object v0, p0, Lorg/xbill/DNS/DNSOutput;->array:[B

    iget v1, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/xbill/DNS/DNSOutput;->pos:I

    and-int/lit16 p0, p1, 0xff

    int-to-byte p0, p0

    aput-byte p0, v0, v1

    return-void
.end method
