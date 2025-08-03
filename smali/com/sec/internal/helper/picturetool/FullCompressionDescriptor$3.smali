.class Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 67
    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmMinDimension(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v2

    div-int/2addr v1, v2

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 71
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmMinDimension(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v2

    div-int/2addr v2, v0

    if-eq v2, v1, :cond_0

    if-nez v2, :cond_1

    .line 76
    iget-object v2, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmFinal(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;->next(J)Landroid/util/Pair;

    goto :goto_0

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fputmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;I)V

    .line 84
    invoke-static {}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mStandard: Exit"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x5a

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$3;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {p0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
