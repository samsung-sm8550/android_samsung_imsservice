.class public Lcom/sec/internal/helper/picturetool/JpgContext;
.super Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;
.source "JpgContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JpgContext"


# instance fields
.field private mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/helper/picturetool/JpgContext;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    return-void
.end method


# virtual methods
.method public getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 31
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    sget-object v0, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processSpecificData: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/JpgContext;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/ExifProcessor;->process(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    sget-object p0, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    const-string p1, "IOException from ExifProcessor but use destinationFile"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    sget-object p0, Lcom/sec/internal/helper/picturetool/JpgContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "processSpecificData: Exit"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 37
    const-class p0, Lcom/sec/internal/helper/picturetool/JpgContext;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
