.class public Lcom/sec/internal/log/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 56
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/log/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 53
    new-array p1, p1, [C

    iput-object p1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleChar:[C

    .line 61
    iput-object p2, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    .line 62
    iput p3, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mWrapLength:I

    return-void
.end method

.method private maybeWriteIndent()V
    .locals 3

    .line 138
    iget-boolean v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 140
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v2, v1

    invoke-super {p0, v1, v0, v2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_1
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    return-void
.end method

.method public increaseIndent()V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentIndent:[C

    return-void
.end method

.method public println()V
    .locals 1

    const/16 v0, 0xa

    .line 77
    invoke-virtual {p0, v0}, Lcom/sec/internal/log/IndentingPrintWriter;->write(I)V

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mSingleChar:[C

    int-to-char p1, p1

    const/4 v1, 0x0

    aput-char p1, v0, v1

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/log/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 3

    .line 88
    new-array v0, p3, [C

    sub-int v1, p3, p2

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 90
    invoke-virtual {p0, v0, v2, p3}, Lcom/sec/internal/log/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/2addr p3, p2

    move v1, p2

    :goto_0
    if-ge p2, p3, :cond_3

    add-int/lit8 v2, p2, 0x1

    .line 102
    aget-char p2, p1, p2

    .line 103
    iget v3, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    const/4 v3, 0x0

    const/16 v5, 0xa

    if-ne p2, v5, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/sec/internal/log/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 106
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 108
    iput-boolean v4, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 109
    iput v3, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    .line 113
    :cond_0
    iget p2, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mWrapLength:I

    if-lez p2, :cond_2

    iget v6, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    sub-int/2addr p2, v0

    if-lt v6, p2, :cond_2

    .line 114
    iget-boolean p2, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    if-nez p2, :cond_1

    .line 116
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 117
    iput-boolean v4, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    sub-int p2, v2, v1

    .line 118
    iput p2, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_1

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/log/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int p2, v2, v1

    .line 122
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    .line 123
    invoke-super {p0, v5}, Ljava/io/PrintWriter;->write(I)V

    .line 124
    iput-boolean v4, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mEmptyLine:Z

    .line 126
    iput v3, p0, Lcom/sec/internal/log/IndentingPrintWriter;->mCurrentLength:I

    move v1, v2

    :cond_2
    :goto_1
    move p2, v2

    goto :goto_0

    :cond_3
    if-eq v1, p2, :cond_4

    .line 132
    invoke-direct {p0}, Lcom/sec/internal/log/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int/2addr p2, v1

    .line 133
    invoke-super {p0, p1, v1, p2}, Ljava/io/PrintWriter;->write([CII)V

    :cond_4
    return-void
.end method
