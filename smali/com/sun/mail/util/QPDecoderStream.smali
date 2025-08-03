.class public Lcom/sun/mail/util/QPDecoderStream;
.super Ljava/io/FilterInputStream;
.source "QPDecoderStream.java"


# instance fields
.field protected ba:[B

.field protected spaces:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    new-array p1, v1, [B

    iput-object p1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 p1, 0x0

    .line 56
    iput p1, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0

    .line 193
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public markSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 7

    .line 80
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 82
    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    return v2

    .line 86
    :cond_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/16 v3, 0xd

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v6, 0xa

    if-ne v0, v2, :cond_4

    .line 90
    :goto_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v6, :cond_2

    if-ne v0, v5, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast p0, Ljava/io/PushbackInputStream;

    invoke-virtual {p0, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_2

    .line 96
    :cond_2
    :goto_1
    iput v4, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    move v2, v0

    :goto_2
    return v2

    .line 91
    :cond_3
    iget v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/util/QPDecoderStream;->spaces:I

    goto :goto_0

    :cond_4
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_9

    .line 106
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result p0

    return p0

    :cond_5
    if-ne v2, v3, :cond_7

    .line 117
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v6, :cond_6

    .line 122
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    invoke-virtual {v1, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 123
    :cond_6
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result p0

    return p0

    :cond_7
    if-ne v2, v5, :cond_8

    return v5

    .line 128
    :cond_8
    iget-object v3, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    .line 129
    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v3}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 140
    :catch_0
    iget-object v1, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object p0, p0, Lcom/sun/mail/util/QPDecoderStream;->ba:[B

    invoke-virtual {v1, p0}, Ljava/io/PushbackInputStream;->unread([B)V

    :cond_9
    return v0
.end method

.method public read([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/QPDecoderStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez v0, :cond_1

    move v0, v2

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 170
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
