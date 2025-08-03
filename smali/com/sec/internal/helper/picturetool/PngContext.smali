.class public Lcom/sec/internal/helper/picturetool/PngContext;
.super Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;
.source "PngContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PngContext"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getDestinationFormat()Landroid/graphics/Bitmap$CompressFormat;
    .locals 0

    .line 24
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    sget-object p0, Lcom/sec/internal/helper/picturetool/PngContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "processSpecificData: Exit"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 30
    const-class p0, Lcom/sec/internal/helper/picturetool/PngContext;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
