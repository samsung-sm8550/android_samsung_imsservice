.class public Lcom/sec/internal/helper/picturetool/UnsupportedContext;
.super Ljava/lang/Object;
.source "UnsupportedContext.java"

# interfaces
.implements Lcom/sec/internal/helper/picturetool/IContentTypeContext;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UnsupportedContext"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 28
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "BAD ACCESS"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BAD ACCESS"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "BAD ACCESS"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 55
    const-class p0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public validateExtension()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    sget-object p0, Lcom/sec/internal/helper/picturetool/UnsupportedContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unsupported image format"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method
