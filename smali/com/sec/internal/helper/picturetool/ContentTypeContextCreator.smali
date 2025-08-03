.class public Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;
.super Ljava/lang/Object;
.source "ContentTypeContextCreator.java"


# static fields
.field private static final EXT_3GP_0:Ljava/lang/String; = "video/3gpp"

.field private static final EXT_3GP_1:Ljava/lang/String; = "video/3gpp2"

.field private static final EXT_BMP:Ljava/lang/String; = "image/x-ms-bmp"

.field private static final EXT_BMP_1:Ljava/lang/String; = "image/bmp"

.field private static final EXT_JPG:Ljava/lang/String; = "image/jpeg"

.field private static final EXT_MP4:Ljava/lang/String; = "video/mp4"

.field private static final EXT_PNG:Ljava/lang/String; = "image/png"

.field private static final EXT_WBMP:Ljava/lang/String; = "image/vnd.wap.wbmp"


# instance fields
.field private mDefaultCntxt:Lcom/sec/internal/helper/picturetool/DefaultContext;

.field private mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

.field private mUnsupportCntxt:Lcom/sec/internal/helper/picturetool/UnsupportedContext;

.field private mjpgCntxt:Lcom/sec/internal/helper/picturetool/JpgContext;

.field private mpngCntxt:Lcom/sec/internal/helper/picturetool/PngContext;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/sec/internal/helper/picturetool/ExifProcessor;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/ExifProcessor;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    .line 32
    new-instance v0, Lcom/sec/internal/helper/picturetool/JpgContext;

    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/picturetool/JpgContext;-><init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mjpgCntxt:Lcom/sec/internal/helper/picturetool/JpgContext;

    .line 34
    new-instance v0, Lcom/sec/internal/helper/picturetool/PngContext;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/PngContext;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mpngCntxt:Lcom/sec/internal/helper/picturetool/PngContext;

    .line 36
    new-instance v0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;

    invoke-direct {v0}, Lcom/sec/internal/helper/picturetool/UnsupportedContext;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mUnsupportCntxt:Lcom/sec/internal/helper/picturetool/UnsupportedContext;

    .line 38
    new-instance v0, Lcom/sec/internal/helper/picturetool/DefaultContext;

    iget-object v1, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mExifProcessor:Lcom/sec/internal/helper/picturetool/ExifProcessor;

    invoke-direct {v0, v1}, Lcom/sec/internal/helper/picturetool/DefaultContext;-><init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V

    iput-object v0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mDefaultCntxt:Lcom/sec/internal/helper/picturetool/DefaultContext;

    return-void
.end method


# virtual methods
.method public getContextByMime(Ljava/lang/String;)Lcom/sec/internal/helper/picturetool/IContentTypeContext;
    .locals 1

    .line 44
    const-string v0, "image/x-ms-bmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "image/bmp"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "image/vnd.wap.wbmp"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "video/mp4"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "video/3gpp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "video/3gpp2"

    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    const-string v0, "image/jpeg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mjpgCntxt:Lcom/sec/internal/helper/picturetool/JpgContext;

    goto :goto_1

    .line 52
    :cond_1
    const-string v0, "image/png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mpngCntxt:Lcom/sec/internal/helper/picturetool/PngContext;

    goto :goto_1

    .line 55
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mUnsupportCntxt:Lcom/sec/internal/helper/picturetool/UnsupportedContext;

    goto :goto_1

    .line 49
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/helper/picturetool/ContentTypeContextCreator;->mDefaultCntxt:Lcom/sec/internal/helper/picturetool/DefaultContext;

    :goto_1
    return-object p0
.end method
