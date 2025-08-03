.class public Lcom/sec/internal/helper/StringGenerator;
.super Ljava/lang/Object;
.source "StringGenerator.java"


# static fields
.field private static final CHAR_ARRAY_SIZE:I = 0x3e

.field private static final charArray:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x3e

    .line 19
    new-array v0, v0, [C

    sput-object v0, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 23
    sget-object v2, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 v1, 0x1a

    if-ge v0, v1, :cond_1

    .line 26
    sget-object v1, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    add-int/lit8 v2, v0, 0xa

    add-int/lit8 v3, v0, 0x61

    int-to-char v3, v3

    aput-char v3, v1, v2

    add-int/lit8 v2, v0, 0x24

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    .line 27
    aput-char v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateString(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-lez p0, :cond_2

    if-gt p0, p1, :cond_2

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-le p1, p0, :cond_0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    .line 51
    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, p0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_1

    const/16 v2, 0x3e

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/StringGenerator;->getChar(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static getChar(I)C
    .locals 1

    .line 32
    sget-object v0, Lcom/sec/internal/helper/StringGenerator;->charArray:[C

    aget-char p0, v0, p0

    return p0
.end method
