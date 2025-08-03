.class public Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# static fields
.field private static final DEDICATED_IMAGE_QUALITY:I = 0x5a

.field private static final LOG_TAG:Ljava/lang/String; = "FullCompressionDescriptor"


# instance fields
.field private mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mMaxSize:J

.field private final mMinDimension:I

.field private mScale:I

.field private final mSecond:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

.field private final mStandard:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# direct methods
.method static bridge synthetic -$$Nest$fgetmFinal(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxSize(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMaxSize:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMinDimension(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMinDimension:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSecond(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mSecond:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStandard(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mStandard:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDelegate(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(JIIJIILcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;-><init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mInitial:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 43
    new-instance v1, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;-><init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mSecond:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 62
    new-instance v1, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;-><init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mStandard:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 92
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    .line 103
    iput-object p9, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    .line 104
    iput-wide p5, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMaxSize:J

    .line 106
    invoke-static {p3, p7}, Ljava/lang/Math;->min(II)I

    move-result p7

    .line 107
    invoke-static {p4, p8}, Ljava/lang/Math;->min(II)I

    move-result p8

    .line 108
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p9

    iput p9, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mMinDimension:I

    .line 110
    div-int/2addr p3, p7

    div-int/2addr p4, p8

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    long-to-double p1, p1

    long-to-double p4, p5

    div-double/2addr p1, p4

    .line 113
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 112
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 114
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mScale:I

    .line 116
    div-int/2addr p9, p1

    if-nez p9, :cond_0

    .line 117
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mFinal:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    :cond_0
    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 124
    sget-object v0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullCompressionDescriptor::next size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->mDelegate:Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
