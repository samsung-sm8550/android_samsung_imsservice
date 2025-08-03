.class Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;
.super Ljava/lang/Object;
.source "VideoPreviewExtractor.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IVideoPreviewExtractor$IVideoPreview;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$previewDimensions:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;Ljava/io/File;Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->this$0:Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor;

    iput-object p2, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$file:Ljava/io/File;

    iput-object p3, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$previewDimensions:Landroid/util/Pair;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDimensions()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$previewDimensions:Landroid/util/Pair;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$file:Ljava/io/File;

    return-object p0
.end method

.method public getSize()J
    .locals 2

    .line 74
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/VideoPreviewExtractor$1;->val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method
