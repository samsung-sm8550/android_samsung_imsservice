.class public final Lcom/sec/internal/helper/NaptrDnsResolver;
.super Ljava/lang/Object;
.source "NaptrDnsResolver.java"


# static fields
.field private static final MAXLABELCOUNT:I = 0x80

.field private static final MAXLABELSIZE:I = 0x3f

.field private static final NAME_COMPRESSION:I = 0xc0

.field private static final NAME_NORMAL:I = 0x0

.field public static final QUERY_TYPE_NAPTR:I = 0x23

.field private static final TAG:Ljava/lang/String; = "NaptrDnsResolver"

.field public static final TYPE_A:I = 0x0

.field public static final TYPE_P:I = 0x3

.field public static final TYPE_SRV:I = 0x1

.field public static final TYPE_U:I = 0x2

.field private static final sByteFormat:Ljava/text/DecimalFormat;

.field private static final sPos:Ljava/text/FieldPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/NaptrDnsResolver;->sByteFormat:Ljava/text/DecimalFormat;

    .line 60
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    sput-object v0, Lcom/sec/internal/helper/NaptrDnsResolver;->sPos:Ljava/text/FieldPosition;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static labelToString([B)Ljava/lang/String;
    .locals 6

    .line 370
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 372
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_4

    .line 373
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    const/16 v3, 0x20

    const/16 v4, 0x5c

    if-le v2, v3, :cond_3

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/16 v3, 0x22

    if-eq v2, v3, :cond_2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    const/16 v3, 0x28

    if-eq v2, v3, :cond_2

    const/16 v3, 0x29

    if-eq v2, v3, :cond_2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_2

    const/16 v3, 0x24

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    int-to-char v2, v2

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 382
    :cond_2
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v2, v2

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 377
    :cond_3
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 378
    sget-object v3, Lcom/sec/internal/helper/NaptrDnsResolver;->sByteFormat:Ljava/text/DecimalFormat;

    int-to-long v4, v2

    sget-object v2, Lcom/sec/internal/helper/NaptrDnsResolver;->sPos:Ljava/text/FieldPosition;

    invoke-virtual {v3, v4, v5, v0, v2}, Ljava/text/DecimalFormat;->format(JLjava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;,
            Lcom/android/net/module/util/DnsPacket$ParseException;
        }
    .end annotation

    const/16 v0, 0x80

    if-gt p1, v0, :cond_8

    .line 333
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    and-int/lit16 v1, v0, 0xc0

    if-nez v0, :cond_0

    .line 336
    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v2, 0xc0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    if-nez p2, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 339
    :cond_2
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Parse name fail, bad label type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-ne v1, v2, :cond_5

    and-int/lit16 v0, v0, -0xc1

    shl-int/lit8 v0, v0, 0x8

    .line 342
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 343
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v2, v1, -0x2

    if-ge v0, v2, :cond_4

    .line 348
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 p1, p1, 0x1

    .line 349
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/NaptrDnsResolver;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object p1

    .line 350
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    .line 345
    :cond_4
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Parse compression name fail, invalid compression"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 353
    :cond_5
    new-array v0, v0, [B

    .line 354
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 355
    invoke-static {v0}, Lcom/sec/internal/helper/NaptrDnsResolver;->labelToString([B)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x3f

    if-gt v1, v2, :cond_7

    add-int/lit8 p1, p1, 0x1

    .line 359
    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/NaptrDnsResolver;->parseName(Ljava/nio/ByteBuffer;IZ)Ljava/lang/String;

    move-result-object p0

    .line 360
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 357
    :cond_7
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Parse name fail, invalid label length"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 331
    :cond_8
    new-instance p0, Lcom/android/net/module/util/DnsPacket$ParseException;

    const-string p1, "Failed to parse name, too many labels"

    invoke-direct {p0, p1}, Lcom/android/net/module/util/DnsPacket$ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static query(Landroid/net/Network;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;Ljava/lang/String;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/CancellationSignal;",
            "Landroid/net/DnsResolver$Callback<",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/NaptrDnsResolver$NaptrTarget;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 313
    new-instance v8, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;

    invoke-direct {v8, p4, p2, p5}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;-><init>(Landroid/net/DnsResolver$Callback;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v0

    const/4 v5, 0x0

    .line 322
    invoke-static {}, Lcom/sec/internal/helper/NaptrDnsResolver$NaptrRecordAnswerAccumulator;->getInternalExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    const/4 v3, 0x1

    const/16 v4, 0x23

    move-object v1, p0

    move-object v2, p1

    move-object v7, p3

    .line 316
    invoke-virtual/range {v0 .. v8}, Landroid/net/DnsResolver;->rawQuery(Landroid/net/Network;Ljava/lang/String;IIILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    return-void
.end method
