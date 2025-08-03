.class Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;
.super Ljava/lang/Object;
.source "PngLazyCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

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

    .line 27
    invoke-static {}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInitial::nex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    invoke-static {p1}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->-$$Nest$fgetmPanic(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->-$$Nest$fputmDelegate(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    const/16 p1, 0x64

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;

    invoke-static {p0}, Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/PngLazyCompressionDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
