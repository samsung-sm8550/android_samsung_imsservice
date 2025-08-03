.class public Lcom/sec/internal/helper/picturetool/DefaultContext;
.super Lcom/sec/internal/helper/picturetool/JpgContext;
.source "DefaultContext.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultContext"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/internal/helper/picturetool/JpgContext;-><init>(Lcom/sec/internal/helper/picturetool/ExifProcessor;)V

    return-void
.end method

.method private changeExtToJpg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 48
    const-string p0, "."

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ".jpg"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p2}, Lcom/sec/internal/helper/picturetool/DefaultContext;->changeExtToJpg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/sec/internal/helper/picturetool/SupportedContextAdapter;->getFinalFilePath(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public processSpecificData(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget-object p0, Lcom/sec/internal/helper/picturetool/DefaultContext;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "processSpecificData: Exit"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 39
    const-class p0, Lcom/sec/internal/helper/picturetool/DefaultContext;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
