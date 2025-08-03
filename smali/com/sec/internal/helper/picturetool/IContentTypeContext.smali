.class public interface abstract Lcom/sec/internal/helper/picturetool/IContentTypeContext;
.super Ljava/lang/Object;
.source "IContentTypeContext.java"


# virtual methods
.method public abstract getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public abstract getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract validateExtension()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
