.class public interface abstract Lcom/sec/internal/ims/util/IThumbnailTool;
.super Ljava/lang/Object;
.source "IThumbnailTool.java"


# virtual methods
.method public abstract createThumb(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation
.end method

.method public abstract createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation
.end method

.method public abstract createThumbFromImage(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation
.end method

.method public abstract createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JIILandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation
.end method

.method public abstract createThumbFromVideo(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/sec/internal/ims/util/IThumbnailTool$ThumbCreationException;
        }
    .end annotation
.end method

.method public abstract getThumbSavedDirectory()Ljava/lang/String;
.end method

.method public abstract isSupported(Ljava/lang/String;)Z
.end method
