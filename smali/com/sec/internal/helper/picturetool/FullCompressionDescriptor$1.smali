.class Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;
.super Ljava/lang/Object;
.source "FullCompressionDescriptor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next(J)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-static {}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mInitial mScale="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {v0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object p1, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {p1}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmSecond(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fputmDelegate(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;Lcom/sec/internal/helper/picturetool/ICompressionDescriptor;)V

    const/16 p1, 0x5a

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor$1;->this$0:Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;

    invoke-static {p0}, Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;->-$$Nest$fgetmScale(Lcom/sec/internal/helper/picturetool/FullCompressionDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
