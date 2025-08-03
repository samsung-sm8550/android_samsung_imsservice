.class public Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;
.super Ljava/lang/Object;
.source "ComplexImageExtractor.java"


# static fields
.field private static final CONTENT_TYPE_GIF:Ljava/lang/String; = "image/gif"

.field private static final LOG_TAG:Ljava/lang/String; = "ComplexImageExtractor"

.field private static final TEMP_FILE_PREFIX:Ljava/lang/String; = "FT_thumb"


# instance fields
.field private mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    return-void
.end method

.method private getFileExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 31
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public extractFrom(Ljava/io/File;)Ljava/io/File;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 37
    sget-object p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "imageFile == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 42
    sget-object p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->LOG_TAG:Ljava/lang/String;

    const-string p1, "fileName == null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 45
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/helper/translate/ContentTypeTranslator;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gid decoder: extractFrom, file="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    const-string v2, "ComplexImageExtractor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v1, Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-direct {v1}, Lcom/sec/internal/helper/picturetool/GifDecoder;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/picturetool/GifDecoder;->read(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 59
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->getFrames()Ljava/util/Vector;

    move-result-object p0

    .line 61
    invoke-static {p0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 70
    :try_start_0
    const-string v1, "FT_thumb"

    const-string v2, ".jpg"

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 71
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 73
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;

    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p0, :cond_2

    .line 84
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 87
    :try_start_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    return-object p1

    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_2
    throw p0

    .line 84
    :cond_2
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 91
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_4
    move-exception p0

    .line 87
    :try_start_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 91
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_3
    return-object v1

    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_5

    :catch_5
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_5
    throw p0

    :catchall_2
    move-exception p0

    move-object v0, v2

    goto :goto_a

    :catch_6
    move-exception p0

    move-object v0, v2

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_a

    :catch_7
    move-exception p0

    .line 80
    :goto_6
    :try_start_c
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v0, :cond_3

    .line 84
    :try_start_d
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_9

    :catchall_4
    move-exception p0

    goto :goto_7

    :catch_8
    move-exception p0

    .line 87
    :try_start_e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 91
    :try_start_f
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_f

    :catch_9
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 91
    :goto_7
    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_8

    :catch_a
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_8
    throw p0

    :cond_3
    :goto_9
    if-eqz v0, :cond_8

    .line 91
    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    goto :goto_f

    :goto_a
    if-eqz v0, :cond_4

    .line 84
    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    goto :goto_d

    :catchall_5
    move-exception p0

    goto :goto_b

    :catch_b
    move-exception p1

    .line 87
    :try_start_13
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 91
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    goto :goto_e

    :catch_c
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 91
    :goto_b
    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    goto :goto_c

    :catch_d
    move-exception p1

    .line 94
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 96
    :goto_c
    throw p0

    :cond_4
    :goto_d
    if-eqz v0, :cond_5

    .line 91
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 97
    :cond_5
    :goto_e
    throw p0

    .line 63
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 65
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 63
    const-string v0, "Requested frame was: 0 but %d only available."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 54
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "GifDecoder read routine has ended with an error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_f
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ComplexImageExtractor;->mDecoder:Lcom/sec/internal/helper/picturetool/GifDecoder;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sec/internal/helper/picturetool/GifDecoder;->clean()V

    :cond_0
    return-void
.end method
