.class Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmStandard(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fputmDelegate(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    .line 50
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    long-to-double p1, p1

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 52
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr p1, v2

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmMaxSize(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    .line 50
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fputmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;I)V

    const/16 p1, 0x5a

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$2;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {p0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
